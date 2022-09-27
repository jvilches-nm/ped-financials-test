view: budget_year {
  sql_table_name: Common.BudgetYear ;;
  label: "Year"

  dimension: pk_budget_year {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkBudgetYear ;;
  }

  dimension: end_date {
    type: date
    label: "End Date"
    sql: ${TABLE}.EndDate ;;
  }

  dimension: start_date {
    type: date
    label: "Start Date"
    sql: ${TABLE}.StartDate ;;
  }

  dimension: year_name {
    type: string
    label: "Fiscal Year"
    description: "Fiscal year of the budget"
    sql: ${TABLE}.YearName ;;
  }

}
