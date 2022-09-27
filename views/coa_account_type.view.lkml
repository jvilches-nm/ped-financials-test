view: coa_account_type {
  sql_table_name: COA.CoaAccountType ;;
  label: "UCOA Account"

  dimension: code {
    type: string
    label: "Account Type"
    hidden: yes
    sql: ${TABLE}.Code ;;
  }

  dimension: description {
    type: string
    label: "Account Description"
    hidden: yes
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    label: "Account Name"
    hidden: yes
    sql: ${TABLE}.Name ;;
  }

  dimension: pk_coa_account_type {
    type: number
    hidden:  yes
    primary_key:  yes
    sql: ${TABLE}.pkCoaAccountType ;;
  }

}
