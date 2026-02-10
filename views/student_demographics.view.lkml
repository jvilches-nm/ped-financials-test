view: student_demographics {
  sql_table_name: looker.student_demographics ;;

  dimension: district_code {
    type: string
    description: "Three digit district code"
    sql: ${TABLE}.district_code ;;
  }
  dimension: district_name {
    type: string
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
    sql: cast(year(${TABLE}.school_year)-1 as varchar) +'-'+cast(year(${TABLE}.school_year) ;;
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
}
