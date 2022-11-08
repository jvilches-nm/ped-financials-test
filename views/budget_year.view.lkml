view: budget_year {
  derived_table: {
    sql: select * from common.budgetyear where YEAR(enddate)>=2021 ;;
    datagroup_trigger: ped_public_financials_test_datagroup
    indexes: ["pkBudgetYear", "YearName"]
  }

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
