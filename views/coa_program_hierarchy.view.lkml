view: coa_program_hierarchy {
  derived_table: {
    sql: select f1.code lvl1_code, f1.name lvl1_name,
      case when f2.code is not null then f2.code else f1.code end lvl2_code,
      case when f2.name is not null then f2.name else f1.name end lvl2_name,
      case when f2.pkcoaprogram is not null then f2.pkcoaprogram else f1.pkcoaprogram end pkcoaprogram
      from coa.coaprogram f1
      left join coa.coaprogram f2 on f2.fkparentprogram=f1.pkcoaprogram
      where f1.fkparentprogram is null;;
    persist_for: "24 hour"
    indexes: ["pkcoaprogram", "lvl2_code", "lvl2_name"]
  }
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
    sql: ${TABLE}.lvl2_code ;;
  }
  dimension: program_name {
    type: string
    label: "Program Name"
    sql: replace(${TABLE}.lvl2_name, 'Special ', 'Special Ed ') ;;
  }

}
