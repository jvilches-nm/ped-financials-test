view: coa_fund_hierarchy {
  derived_table: {
    sql: select f1.code lvl1_fundcode, f1.name lvl1_fundname, f2.code lvl2_fundcode, f2.name lvl2_fundname,
      case when f3.code is not null then f3.code else f2.code end lvl3_fundcode, case when f3.name is not null then f3.name else f2.name end lvl3_fundname,
      case when f4.code is not null then f4.code when f3.code is not null then f3.code else f2.code end lvl4_fundcode,
      case when f4.name is not null then f4.name when f3.name is not null then f3.name else f2.name end lvl4_fundname,
      case when f4.pkcoafund is not null then f4.pkcoafund when f3.pkcoafund is not null then f3.pkcoafund when f2.pkcoafund is not null then f2.pkcoafund else f1.pkcoafund end pkcoafund,
      ft.code fund_type_code, ft.name fund_type
      from coa.coafund f1
      left join coa.coafund f2 on f2.fkparentfund=f1.pkcoafund
      left join coa.coafund f3 on f3.fkparentfund=f2.pkcoafund
      left join coa.coafund f4 on f4.fkparentfund=f3.pkcoafund
      left join coa.fundtype ft on ft.pkfundtype= case when f4.fkfundtype is not null then f4.fkfundtype when f3.fkfundtype is not null then f3.fkfundtype when f2.fkfundtype is not null then f2.fkfundtype else f1.fkfundtype end
      where f1.fkparentfund is null;;
    persist_for: "4 hour"
    indexes: ["pkcoafund", "lvl4_fundcode"]
  }
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
  dimension: parent_fund_code {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl1_fundcode ;;
  }
  dimension: parent_fund_name {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl1_fundname ;;
  }
  dimension: child_fund_code {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl2_fundcode ;;
  }
  dimension: child_fund_name {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl2_fundname ;;
  }
  dimension: lvl3_fund_code {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl3_fundcode ;;
  }
  dimension: lvl3_fund_name {
    type: string
    hidden: yes
    sql: ${TABLE}.lvl3_fundname ;;
  }
  dimension: fund_code {
    type: string
    label: "Fund Code"
    sql: ${TABLE}.lvl4_fundcode ;;
  }
  dimension: fund_name {
    type: string
    label: "Fund Name"
    sql: ${TABLE}.lvl4_fundname ;;
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
