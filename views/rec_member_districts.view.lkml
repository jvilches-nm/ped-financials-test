view: rec_member_districts {
  sql_table_name: looker.rec_member_districts ;;

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: member_district_code {
    type: string
    sql: ${TABLE}.member_district_code ;;
  }

  dimension: rec_code {
    type: string
    sql: ${TABLE}.rec_code ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.rec_name ;;
    order_by_field: rec_name_order
  }

  dimension: rec_name_order {
    type: number
    hidden: yes
    sql: cast(substring(rec_name, 2, 2) as numeric) ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [rec_name]
  }
}
