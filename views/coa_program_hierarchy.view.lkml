view: coa_program_hierarchy {
  sql_table_name: coa.coaprogram ;;

  label: "UCOA Program"

  dimension: pk_coa_program {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoaprogram ;;
  }
  dimension: program_code {
    type: string
    label: "Program Code"
    sql: ${TABLE}.code ;;
  }
  dimension: program_name {
    type: string
    label: "Program Name"
    sql: replace(${TABLE}.name, 'Special ', 'Special Ed ') ;;
  }

}
