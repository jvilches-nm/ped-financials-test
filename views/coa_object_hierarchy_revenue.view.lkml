include: "/views/coa_object_hierarchy.view"
view: coa_object_hierarchy_revenue {
extends: [coa_object_hierarchy]

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
