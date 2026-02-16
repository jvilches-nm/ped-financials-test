view: student_demographics {
  sql_table_name: looker.student_demographics ;;

  dimension: district_code {
    type: string
    description: "Three digit district code"
    sql: ${TABLE}.district_code ;;
  }
  dimension: district_name {
    type: string
    map_layer_name: my_neighborhood_layer_v2
    description: "District name"
    sql: ${TABLE}.district_name ;;
  }
  dimension: econ_disadvantaged {
    type: string
    description: "Economically disadvantaged status"
    sql: ${TABLE}.econ_disadvantaged ;;
  }
  dimension: ell {
    type: string
    description: "English learner status"
    sql: ${TABLE}.ell ;;
  }
  dimension: gender {
    type: string
    description: "Gender identity or birth gender"
    sql: ${TABLE}.gender ;;
  }
  dimension: homeless_status {
    type: string
    description: "Homeless status"
    sql: ${TABLE}.homeless_status ;;
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
    sql: cast(year(${TABLE}.school_year)-1 as varchar) +'-'+cast(year(${TABLE}.school_year) as varchar) ;;
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
    description: "Current grade level - sort order"
    sql: case ${TABLE}.student_grade_level when 'PK' then 1 when 'KF' then 2 when '01' then 3 when '02' then 4 when '03' then 5
                                           when '04' then 6 when '05' then 7 when '06' then 8 when '07' then 9 when '08' then 10
                                           when '09' then 11 when '10' then 12 when '11' then 13 when '12' then 14 else 15 end;;
  }
  dimension: student_id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: student_race_ethnicity_derived {
    type: string
    description: "Derived race ethnicity"
    sql: ${TABLE}.student_race_ethnicity_derived ;;
  }
  measure: count {
    type: count
  }

  measure: count_districts {
    type: count_distinct
    sql: ${TABLE}.district_code ;;
  }
  measure: count_schools {
    type: count_distinct
    sql: ${TABLE}.district_code+${TABLE}.school_code ;;
  }
}
