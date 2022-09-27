view: rec_names {
  derived_table: {
    sql: select distinct fiscal_year, rec_name, rec_code from looker.rec_member_districts ;;
  }
  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: rec_code {
    type: string
    sql: ${TABLE}.rec_code ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.rec_name ;;
  }

  measure: count {
    type: count
    drill_fields: [rec_name]
  }
}
