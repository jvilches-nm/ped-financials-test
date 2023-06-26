view: coa_function_hierarchy {
  sql_table_name: COA.CoaFunction ;;

  label: "UCOA Function"

  dimension: pk_coa_function {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafunction ;;
  }

  dimension: function_code {
    type: string
    label: "Function Code"
    sql: ${TABLE}.code ;;
  }

  dimension: rollup_function_name {
    type: string
    label: "Function Rollup Name"
    sql: case ${function_code} when '2300' then 'Administration'
           when '2400' then 'Administration'
           when '2500' then 'Administration'
           when '1000' then 'Instruction & Support'
           when '2100' then 'Instruction & Support'
           when '2200' then 'Instruction & Support'
           when '4000' then 'Capital Outlay'
           when '5000' then 'Debt Service'
           else 'Other Support Services'
          end ;;
    drill_fields: [function_name]
  }

  dimension: function_name {
    type: string
    label: "Function Name"
    sql: ${TABLE}.name ;;
  }
}
