view: annual_attendance {
  sql_table_name: looker.annual_attendance ;;

  dimension: car {
    type: number
    sql: ${TABLE}.CAR ;;
  }

  measure: Chronic_Absentee_Rate{
    type: sum
    label: "Chronic Absentee Rate"
    description: "Percent of student enrolled for at least 10 days and who have missed 10% or more school days since the beginning of School Year"
    sql: ${TABLE}.CurrentYearCAS ;;
  }

  dimension: current_year_cas {
    type: number
    sql: ${TABLE}.CurrentYearCAS ;;
  }

  measure: Chronically_Absent_Student {
    type: sum
    label: "Chronically Absent Student"
    sql:${TABLE}.CurrentYearCAS  ;;
  }

  dimension: district_code {
    type: number
    sql: CAST(${TABLE}.DistrictCode AS int) ;;
  }


  dimension: location_type {
    type: string
    sql: ${TABLE}.LocationType ;;
  }

  dimension: school_code {
    type: number
    sql: CAST(${TABLE}.SchoolCode AS int);;
  }

  dimension: starsschool_year {
    type: date
    hidden: yes
    sql: ${TABLE}.STARSSchoolYear ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.STARSSchoolYear)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.STARSSchoolYear) as varchar) ;;
  }

  dimension: sub_pop_item_code {
    type: string
    sql: ${TABLE}.SubPopItemCode ;;
  }

  dimension: sub_pop_item {
    type: string
    label: "Subpopulation Item"
    order_by_field: sub_pop_item_sort
    sql:  case when ${sub_pop_item_code} = 'F' then 'Female'
               when ${sub_pop_item_code} = 'M' then 'Male'
               when ${sub_pop_item_code} = 'ED' then 'Economically Disadvantaged'
               when ${sub_pop_item_code} = 'H' then 'Hispanic'
               when ${sub_pop_item_code} = 'A' then 'Asian'
               when ${sub_pop_item_code} = 'C' then 'Caucasian'
               when ${sub_pop_item_code} = 'B' then 'Black  or African American'
               when ${sub_pop_item_code} = 'I' then 'American Indian/Alaskan Native'
               when ${sub_pop_item_code} = 'P' then 'Native Hawaiian or Other Pacific Islander'
               when ${sub_pop_item_code} = 'SD' then 'Students with Disabilities'
               when ${sub_pop_item_code} = 'EL' then 'English Language Learners'
               when ${sub_pop_item_code} = 'NH' then 'Not Hispanic'
               when ${sub_pop_item_code} = 'Homeless' then 'Experiencing Housing Insecurity'
               when ${sub_pop_item_code} = 'Not Homeless' then 'Housed'
               else '' end
              ;;
  }

  dimension: sub_pop_item_sort {
    type: number
    label: "Subpopulation Item Sort"
    sql:  case when ${sub_pop_item_code} = 'F' then 1
               when ${sub_pop_item_code} = 'M' then 2
               when ${sub_pop_item_code} = 'H' then 3
               when ${sub_pop_item_code} = 'I' then 4
               when ${sub_pop_item_code} = 'A' then 5
               when ${sub_pop_item_code} = 'B' then 6
               when ${sub_pop_item_code} = 'C' then 7
               when ${sub_pop_item_code} = 'P' then 8
               when ${sub_pop_item_code} = 'NH' then 9
               when ${sub_pop_item_code} = 'ED' then 10
               when ${sub_pop_item_code} = 'SD' then 11
               when ${sub_pop_item_code} = 'EL' then 12
               when ${sub_pop_item_code} = 'Homeless' then 13
               when ${sub_pop_item_code} = 'Not Homeless' then 14
               else 0 end
              ;;
  }

  dimension: district_name {
    type: string
    label: " District Name"
    sql: ${TABLE}.DistrictName ;;
  }

  dimension: district_name_filter{
    label: "District Name - Filter"
    type: string
    sql: ${TABLE}.DistrictName ;;
    html: {% if annual_attendance.district_name._is_filtered %}
          <a>{{rendered_value}} </a>
          {% else %}
          <a> All Districts </a>
          {% endif %};;
  }


  dimension: school_name {
    type: string
    label: " School Name"
    sql: ${TABLE}.SchoolName ;;
  }

  dimension: school_name_filter{
    label: "School Name - Filter"
    type: string
    sql: ${TABLE}.SchoolName ;;
    html: {% if annual_attendance.school_name._is_filtered %}
          <a>{{rendered_value}} </a>
          {% elsif annual_attendance.district_name._is_filtered %}
          <a>All Schools in District</a>
          {% else %}
          <a>All Schools in State</a>
          {% endif %};;
  }

  dimension: percent_tier_1 {
    type: string
    label: "Percent of Student in Tier 1"
    sql: ${TABLE}.Tier1AbsenceRate ;;
  }

  measure: enroll_number {
    type: sum
    label: "Enrollment"
    sql: ${TABLE}.EnrollNumber ;;
  }


  measure: student_not_in_tiers {
    type: sum
    label: "No. of Students not in Tiers"
    hidden: yes
    sql: ${TABLE}.EnrollNumber - (${TABLE}.Tier1Absentee + ${TABLE}.Tier2Absentee + ${TABLE}.Tier3Absentee + ${TABLE}.Tier4Absentee);;
  }


  measure: tier1_absent_student {
    type: sum
    label: "No. of Student in Tier 1"
    sql: ${TABLE}.EnrollNumber -  ${TABLE}.Tier2Absentee - ${TABLE}.Tier3Absentee - ${TABLE}.Tier4Absentee;;
  }

  dimension: percent_tier_2 {
    type: string
    label: "Percent of Student in Tier 2"
    sql: ${TABLE}.Tier2AbsenceRate ;;
  }

  measure: tier2_absent_student {
    type: sum
    label: "No. of Student in Tier 2"
    sql: ${TABLE}.Tier2Absentee ;;
  }

  dimension: percent_tier_3 {
    type: string
    label: "Percent of Student in Tier 3"
    sql: ${TABLE}.Tier3AbsenceRate ;;
  }

  measure: tier3_absent_student {
    type: sum
    label: "No. of Student in Tier 3"
    sql: ${TABLE}.Tier3Absentee ;;
  }

  dimension: percent_tier_4 {
    type: string
    label: "Percent of Student in Tier 4"
    sql: ${TABLE}.Tier4AbsenceRate ;;
  }

  measure: tier4_absent_student {
    type: sum
    label: "No. of Student in Tier 4"
    sql: ${TABLE}.Tier4Absentee ;;
  }

  measure: total_days_enrolled {
    type: sum
    label: "Total Days Enrolled"
    sql: ${TABLE}.TotalDaysEnrolled ;;
  }

  measure: total_days_present {
    type: sum
    label: "Total Days Present"
    sql: ${TABLE}.TotalDaysPresent ;;
  }

  measure: total_days_excused_absence {
    type: sum
    label: "Total Days Excused Absence"
    sql: ${TABLE}.TotalDaysExcusedAbsence ;;
  }

  measure: avg_days_excused_absence {
    type: average
    label: "Average Excused Absences"
    sql: ${TABLE}.TotalDaysExcusedAbsence ;;
  }

  measure: total_days_unexcused_absence {
    type: sum
    label: "Total Days Unexcused Absence"
    sql: ${TABLE}.TotalDaysUnexcusedAbsence ;;
  }

  measure: avg_days_unexcused_absence {
    type: average
    label: "Average Days Unexcused Absence"
    sql: ${TABLE}.TotalDaysUnexcusedAbsence ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
