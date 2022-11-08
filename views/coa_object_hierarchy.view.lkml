view: coa_object_hierarchy {
  sql_table_name: COA.coaObject ;;

  label: "UCOA Object"

  dimension: pk_coa_object {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.pkcoaobject ;;
  }
  dimension: object_code {
    type: string
    label: "Object Code"
    sql: ${TABLE}.code ;;
  }
  dimension: object_name {
    type: string
    label: "Object Name"
    sql: ${TABLE}.name ;;
  }
  dimension: object_group {
    type: string
    label: "Object Rollup Name"
    sql: CASE WHEN left(${object_code}, 2) = '51' THEN 'Salary'
              WHEN left(${object_code}, 2) = '52' THEN 'Benefits'
              WHEN left(${object_code}, 2) = '53' THEN 'Prof/Tech Services'
              WHEN left(${object_code}, 2) = '54' THEN 'Property Services'
              WHEN left(${object_code}, 2) = '55' THEN 'Other Services'
              WHEN left(${object_code}, 2) = '56' THEN 'Supplies'
              WHEN left(${object_code}, 2) = '57' THEN 'Property'
              WHEN left(${object_code}, 2) = '58' THEN 'Debt Service'
              ELSE 'Other' END;;
    drill_fields: [object_name]
  }
}
