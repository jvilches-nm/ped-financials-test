view: student_outcome_funding_narrative {
  sql_table_name: looker.student_outcome_funding_narrative ;;

  dimension: actual_revenue_amount {
    type: number
    hidden: no
    value_format: "$#,##0"
    sql: ${TABLE}.actual_revenue_amount ;;
  }

  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.district_id ;;
  }

  dimension: district_name {
    type: string
    hidden: yes
    sql: ${TABLE}.district_name ;;
  }

  dimension: fund_code {
    type: string
    hidden: no
    sql: ${TABLE}.fund_code ;;
  }

  dimension: fund_name {
    type: string
    hidden: no
    sql: ${TABLE}.fund_name ;;
  }

  dimension: location_code {
    type: string
    hidden: yes
    sql: ${TABLE}.location_code ;;
  }

  dimension: location_name {
    type: string
    hidden: yes
    sql: ${TABLE}.location_name ;;
  }

  dimension: object_code {
    type: string
    hidden: no
    sql: ${TABLE}.object_code ;;
  }

  dimension: object_name {
    type: string
    hidden: no
    sql: ${TABLE}.object_name ;;
  }

  dimension: school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.school_year ;;
  }

  dimension: student_outcome_narrative {
    type: string
    sql: ${TABLE}.student_outcome_narrative ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [district_name, location_name, fund_name, object_name]
  }
}
