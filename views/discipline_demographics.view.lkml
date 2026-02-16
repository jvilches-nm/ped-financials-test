view: discipline_demographics {
  sql_table_name: looker.discipline_demographics ;;

  dimension_group: discipline_incident {
    type: time
    description: "Date of the discipline incident"
    timeframes: [date, week, month, quarter, year]
    sql: ${TABLE}.discipline_infraction_date ;;
  }
  dimension: discipline_response {
    type: string
    description: "Discipline response: In school suspension, Out of school suspension, Expulsion, Modified Expulsion, or Other"
    sql: ${TABLE}.discipline_response ;;
  }
  dimension: discipline_response_duration_band {
    type: string
    description: "Ranges of duration of the discipline response - number of days rounded to the nearest whole day in bands."
    sql: case round(${TABLE}.Discipline_Response_Duration, 0)
              when 0 then '0 - Less than a day'
              when 1 then '1'
              when 2 then '2'
              when 3 then '3'
              when 4 then '4'
              when 5 then '5'
              when 6 then '6 to 10'
              when 7 then '6 to 10'
              when 8 then '6 to 10'
              when 9 then '6 to 10'
              when 10 then '6 to 10'
              else 'More than 10' end;;
  }
  measure: discipline_response_duration {
    type: sum
    description: "Duration of the discipline response - number of days"
    sql: ${TABLE}.discipline_response_duration ;;
  }
  dimension: district_code {
    type: string
    description:"Three digit district code"
    sql: ${TABLE}.District_Code ;;
  }
  dimension: district_name {
    type: string
    map_layer_name: my_neighborhood_layer_v2
    description: "District name"
    sql: ${TABLE}.district_name ;;
  }
  dimension: econ_disadvantaged {
    type: string
    description: "Economically disadvantaged status (SNAP or Food Program Eligible)"
    sql: ${TABLE}.econ_disadvantaged ;;
  }
  dimension: ell {
    type: string
    description: "English language learner status"
    sql: ${TABLE}.ell ;;
  }
  dimension: gender {
    type: string
    description: "Gender identity or birth gender"
    sql: ${TABLE}.gender ;;
  }
  dimension: homeless_status {
    type: string
    description: "Homeless status of the student"
    sql: ${TABLE}.homeless_status ;;
  }
  dimension: infraction_event_id {
    type: string
    hidden: yes
    sql: ${TABLE}.infraction_event_id ;;
  }
  dimension: school_code {
    type: string
    description: "Three digit school location code"
    sql: ${TABLE}.school_code ;;
  }
  dimension: school_name {
    type: string
    description: "School name"
    sql: ${TABLE}.school_name ;;
  }
  dimension: school_year {
    type: string
    description: "School year"
    sql: cast(year(${TABLE}.school_year)-1 as varchar) + '-' + cast(year(${TABLE}.school_year) as varchar);;
  }
  dimension: special_ed {
    type: string
    description: "Special education status"
    sql: ${TABLE}.special_ed ;;
  }
  dimension: grade_level {
    type: string
    description: "Grade level"
    sql: ${TABLE}.student_grade_level ;;
    order_by_field: grade_level_sort_order
  }

  dimension: grade_level_sort_order {
    type: number
    hidden: yes
    description: "Current grade level of the student at the time of the snapshot - sort order"
    sql: case ${TABLE}.student_grade_level when 'PK' then 1 when 'KF' then 2 when '01' then 3 when '02' then 4 when '03' then 5
                                           when '04' then 6 when '05' then 7 when '06' then 8 when '07' then 9 when '08' then 10
                                           when '09' then 11 when '10' then 12 when '11' then 13 when '12' then 14 else 15 end;;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: student_race_ethnicity_derived {
    type: string
    sql: ${TABLE}.student_race_ethnicity_derived ;;
  }
  measure: count_students {
    type: count_distinct
    sql: ${TABLE}.student_id ;;
  }
  measure: count {
    type: count
  }
}
