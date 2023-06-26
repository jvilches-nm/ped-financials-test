
view: aip_submissions {
  label: "Attendance Improvement Plan Submission"
  derived_table: {
    sql:      select  a.[SBID]
      ,a.[YearID]
      ,c.YearDesc
      ,a.[Type]
      ,a.[DistrictCode]
      ,d.DISTRICT_NAME
      ,a.[SchoolCode]
      ,s.location_name as SchoolName
    ,case when Type = 1 then aa.RequirePlan
      when Type = 2 then ab.RequirePlan ELSE '' end as RequirePlan
      ,a.[Certified]
      ,a.[CreatedBy]
      ,a.[CreateDate]
      ,a.[ModifiedBy]
      ,a.[ModifiedDate]

      from  [looker].[AttendTrack_tbl_Submissions] as  a
      left join [looker].[AttendTrack_cd_year] c on a.YearID = c.YearID
      left join [looker].stars_districts d on cast(d.[district_id] as int) = cast(a.[DistrictCode] as int) and c.YearDesc=d.location_year
      left join (select * from [looker].stars_locations where location_id<>'XXX' and location_id<>'000') s on cast(a.[DistrictCode] as int) = cast(s.DISTRICT_id as int) and cast(a.[SchoolCode] as int) = cast(s.location_id as int) and c.YearDesc=s.location_year
      left join (select distinct districtcode, 'yes' as RequirePlan, ROUND((SUM(CurrentYearCAS)/CAST(SUM(EnrollNumber)as float)), 2) AS CAR, cast(YEAR(STARSSchoolYear)-1 as varchar) +'-'+ cast(YEAR(STARSSchoolYear) as varchar) as school_year
      from [OBMS_Reporting].[looker].[Annual_Attendance]
      where (SubPopItemCode = 'F'or SubPopItemCode = 'M') /*and DistrictCode = 027*/ group by [DistrictCode], cast(YEAR(STARSSchoolYear)-1 as varchar) +'-'+ cast(YEAR(STARSSchoolYear) as varchar))  as aa
      on aa.school_year  = c.YearDesc and aa.CAR >= 0.05 and
      cast(a.[DistrictCode] as int) = cast(aa.[DistrictCode] as int) --and cast(a.[SchoolCode] as int) = cast(aa.[SchoolCode] as int)
      left join (select distinct [DistrictCode], [SchoolCode] , 'yes' as RequirePlan, cast(YEAR(STARSSchoolYear)-1 as varchar) +'-'+ cast(YEAR(STARSSchoolYear) as varchar) as school_year
      from [OBMS_Reporting].[looker].[Annual_Attendance] where /* DistrictCode = 027 and */CAST(CAR AS FLOAT) >= 0.05
      group by [DistrictCode],[SchoolCode], cast(YEAR(STARSSchoolYear)-1 as varchar) +'-'+ cast(YEAR(STARSSchoolYear) as varchar)) ab
      on ab.school_year  = c.YearDesc and
      cast(ab.[DistrictCode] as int) = cast(a.[DistrictCode] as int) and cast(ab.[SchoolCode] as int) = cast(a.[SchoolCode] as int) --and a.SchoolCode<>0
      --where a.YearID = 1   and a.DistrictCode = 27

      ;;
  }
  #sql_table_name: dbo.AttendTrack_tbl_Submissions ;;

  dimension: yeardesc {
    type: string
    label: "School Year"
    sql: ${TABLE}.YearDesc ;;
  }

  dimension: requireplan {
    type: string
    label: "Require Plan"
    sql: ${TABLE}.RequirePlan ;;
  }



  dimension: certified {
    type: string
    sql: case when ${TABLE}.Certified = 'True' then 'Yes'
              when ${TABLE}.Certified = 'False' then 'No'
              else '' end;;
  }

  dimension: certified_calculation {
    type: string
    sql: case when ${TABLE}.Certified = 'True'  and ${requireplan} = 'yes' then 'Yes'
              when ${TABLE}.Certified = 'False'  and ${requireplan} = 'yes' then 'No'
              else 'Not Required' end;;
  }

  dimension: district_name {
    type: string
    label: "District Name"
    sql: ${TABLE}.district_name ;;
  }

  dimension: school_name {
    type: string
    label: "School Name"
    sql: ${TABLE}.schoolname ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CreatedBy ;;
  }

  dimension: district_code {
    type: number
    sql: CAST(${TABLE}.DistrictCode AS int) ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.ModifiedBy ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: sbid {
    type: string
    sql: ${TABLE}.SBID ;;
  }

  dimension: school_code {
    type: number
    sql: CAST(${TABLE}.SchoolCode AS int) ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: year_id {
    type: number
    hidden: yes
    sql: CAST(${TABLE}.YearID AS NUMERIC);;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
