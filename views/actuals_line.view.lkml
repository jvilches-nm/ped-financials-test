view: actuals_line {
  sql_table_name: Actuals.ActualsLine ;;
  label: "Actual Expenditures"

  set: ucoa_codes {
    fields: [coa_fund_hierarchy.fund_group, coa_function_hierarchy.rollup_function_name, coa_object_hierarchy.object_group,
      coa_job_class.job_rollup_name, coa_program_hierarchy.program_name, amount]
  }

  dimension: pk_actuals_line {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.pkActualsLine ;;
  }

  measure: amount {
    type: sum
    label: "Actual Expenditures"
    description: "Actual amount spent"
    value_format: "$#,##0"
    sql: ${TABLE}.ytdamount ;;
    drill_fields: [ucoa_codes*]
  }

  measure: encumbrance {
    type: sum
    description: "Actual encumbrance - amounts promised but not yet actually paid"
    hidden: yes
    value_format: "$#,##0"
    sql: ${TABLE}.Encumbrance ;;
    drill_fields: [ucoa_codes*]
  }

  measure: fte {
    type: sum
    label: "FTE"
    description: "Full Time Equivalent positions corresponding to the amount spent"
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
