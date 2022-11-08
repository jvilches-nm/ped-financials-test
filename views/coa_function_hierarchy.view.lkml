view: coa_function_hierarchy {
  derived_table: {
    sql: select f1.code lvl1_code, f1.name lvl1_name,
        case when f2.code is not null then f2.code else f1.code end lvl2_code,
        case when f2.name is not null then f2.name else f1.name end lvl2_name,
        case when f2.code is not null then f2.pkcoafunction else f1.pkcoafunction end pkcoafunction,
        case when f2.code is not null then f2.fkcoatype else f1.fkcoatype end fkcoatype
        from coa.coafunction f1
        left join coa.coafunction f2 on f2.fkparentfunction=f1.pkcoafunction
        where f1.fkparentfunction is null ;;
    datagroup_trigger: ped_public_financials_test_datagroup
    indexes: ["pkcoafunction", "lvl1_name", "lvl2_name"]
  }
  label: "UCOA Function"

  dimension: pk_coa_function {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafunction ;;
  }

  dimension: lvl1_code {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl1_code ;;
  }

  dimension: rollup_function_name {
    type: string
    label: "Function Rollup Name"
    sql: ${TABLE}.lvl1_name ;;
    drill_fields: [function_name]
  }

  dimension: function_code {
    type: string
    label: "Function Code"
    sql: ${TABLE}.lvl2_code ;;
  }

  dimension: function_name {
    type: string
    label: "Function Name"
    sql: ${TABLE}.lvl2_name ;;
  }
}
