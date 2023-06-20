view: budget_line {
  sql_table_name: dbo.BudgetLine ;;
  label: "Budgeted Expenditures"

  set: ucoa_codes {
    fields: [coa_fund_hierarchy.fund_group, coa_function_hierarchy.rollup_function_name, coa_object_hierarchy.object_group,
      coa_job_class.job_rollup_name, coa_program_hierarchy.program_name, budget_amount]
  }

  measure: adjustment_amount {
    type: sum
    hidden: yes
    sql: ${TABLE}.AdjustmentAmount ;;
  }

  dimension: adjustment_fte {
    type: number
    hidden: yes
    sql: ${TABLE}.AdjustmentFTE ;;
  }

  measure: estimated_amt {
    type: sum
    hidden: yes
    sql: ${TABLE}.EstimatedAmt ;;
  }

  dimension: estimated_fte {
    type: number
    hidden: yes
    sql: ${TABLE}.EstimatedFTE ;;
  }

  measure: final_amount {
    label: "Initial Amount"
    type: sum
    hidden: yes
    sql: ${TABLE}.FinalAmount ;;
  }

  dimension: final_fte {
    type: number
    hidden: yes
    sql: ${TABLE}.FinalFTE ;;
  }

  dimension: fk_budget_fund {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudgetFund ;;
  }

  dimension: fk_coaline {
    type: number
    hidden: yes
    sql: ${TABLE}.fkCOALine ;;
  }

  dimension: fk_location_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkLocationYear ;;
  }

  dimension: pk_budget_line {
    type: number
    primary_key:  yes
    hidden:  yes
    sql: ${TABLE}.pkBudgetLine ;;
  }

  measure: budget_amount {
    type: sum
    label: "Budgeted Expenditures"
    value_format: "$#,##0"
    sql: ${TABLE}.ProjectedAmt ;;
    drill_fields: [ucoa_codes*]
  }

  dimension: budget_fte {
    type: number
    label: "FTE"
    description: "Full Time Equivalent"
    sql: ${TABLE}.ProjectedFTE ;;
  }

}
