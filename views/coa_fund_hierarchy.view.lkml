view: coa_fund_hierarchy {
  sql_table_name: COA.CoaFund ;;

  label: "UCOA Fund"
  dimension: pk_coa_fund {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoafund ;;
  }
  dimension: fund_type_code {
    type: string
    label: "Type Code"
    hidden: yes
    sql: ${TABLE}.fund_type_code ;;
  }
  dimension: fund_type {
    type: string
    label: "Fund Type"
    sql: ${TABLE}.fund_type ;;
  }
  dimension: fund_code {
    type: string
    label: "Fund Code"
    sql: ${TABLE}.code ;;
  }
  dimension: fund_name {
    type: string
    label: "Fund Name"
    sql: ${TABLE}.name ;;
  }

  dimension: fund_group {
    type: string
    label: "Fund Rollup Name"
    sql: CASE WHEN left(${fund_code}, 1) = '1' then 'General Fund'
              WHEN left(${fund_code}, 2) = '21' then 'Food Services'
              WHEN left(${fund_code}, 2) = '20' then 'State and Local Grants'
              WHEN left(${fund_code}, 2) = '22' then 'State and Local Grants'
              WHEN left(${fund_code}, 2) = '23' then 'State and Local Grants'
              WHEN left(${fund_code}, 2) = '24' THEN 'Federal Grants'
              WHEN left(${fund_code}, 2) = '25' THEN 'Federal Grants'
              WHEN left(${fund_code}, 2) = '26' then 'State and Local Grants'
              WHEN left(${fund_code}, 2) = '27' then 'State and Local Grants'
              WHEN left(${fund_code}, 2) = '28' then 'State and Local Grants'
              WHEN left(${fund_code}, 2) = '29' then 'State and Local Grants'
              ELSE 'Other' END;;
    drill_fields: [fund_name]
  }
}
