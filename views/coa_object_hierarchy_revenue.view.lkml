include: "/views/coa_object_hierarchy.view"
view: coa_object_hierarchy_revenue {
extends: [coa_object_hierarchy]

  dimension: parent_object_code {
    type: string
    label: "Object Parent Code"
    hidden: yes
    sql: ${TABLE}.lvl1_code ;;
  }

  dimension: parent_object_name {
    type: string
    label: "Object Parent Name"
    sql: ${TABLE}.lvl1_name ;;
    hidden: yes
    drill_fields: [object_name]
  }

  dimension: lvl2_object_code {
    type: string
    label: "Level 2 Code"
    hidden: yes
    sql: ${TABLE}.lvl2_code ;;
  }

  dimension: lvl2_object_name {
    type: string
    label: "Level 2 Name"
    sql: ${TABLE}.lvl2_name ;;
    hidden: yes
  }

  dimension: object_group {
    type: string
    label: "Object Rollup Name"
    sql: CASE WHEN left(${object_code}, 2) = '41' THEN 'Local'
              WHEN left(${object_code}, 2) = '43' THEN 'State'
              WHEN left(${object_code}, 2) = '44' THEN 'Federal'
              WHEN left(${object_code}, 2) = '45' THEN 'Other'
              WHEN left(${object_code}, 2) = '46' THEN 'Other'
              WHEN left(${object_code}, 1) = '1' THEN 'Cash Assets'
              ELSE 'Other' END;;
    drill_fields: [object_name]
  }

}
