view: actuals_revenue_line {
  sql_table_name: Actuals.ActualsLine ;;
  label: "Actual Revenue"

  set: fund_and_object_codes {
    fields: [coa_fund_hierarchy.fund_name, coa_object_hierarchy_revenue.object_name, amount]
  }

  dimension: pk_actuals_line {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.pkActualsLine ;;
  }

  measure: amount {
    type: sum
    label: "Actual Revenue"
    description: "Actual amount received in revenue"
    value_format: "$#,##0"
    sql: ${TABLE}.ytdamount ;;
    drill_fields: [fund_and_object_codes*]
  }

  measure: encumbrance {
    type: sum
    hidden: yes
    sql: ${TABLE}.Encumbrance ;;
  }

  measure: fte {
    type: sum
    label: "FTE"
    description: "Full Time Equivalent positions"
    sql: ${TABLE}.FTE ;;
  }

  dimension: fk_actuals_budget_period {
    type: number
    hidden: yes
    sql: ${TABLE}.fkActualsBudgetPeriod ;;
  }

  dimension: fk_coa_line {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCoaLine ;;
  }

  dimension: fk_location {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocation ;;
  }

  dimension: fk_location_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocationYear ;;
  }

}
