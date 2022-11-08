view: entity_year {
  derived_table: {
    sql: select et.name parent_type, ey.code parent_code, ey.name parent_name, ct.name child_type, ey.code+'-'+c.code child_code, c.name child_name, c.pkentityyear, c.finalmembership, c.fkbudgetyear
      from common.entityyear ey
      join common.entityyearparentchild pc on pc.fkentityyearparent=ey.pkentityyear
      left join common.entitytype et on et.pkentitytype=ey.fkentitytype
      left join common.entityyear c on c.pkentityyear=pc.fkentityyearchild
      left join common.entitytype ct on ct.pkentitytype=c.fkentitytype
      where et.name in ('Regional Education Cooperative', 'State Charter School', 'School District');;
    datagroup_trigger: ped_public_financials_test_datagroup
    indexes: ["pkentityyear", "child_code", "child_name"]
  }
  label: "OBMS Location - Reference Only"

  dimension: parent_type {
    type: string
    sql: ${TABLE}.parent_type ;;
  }

  measure: membership {
    type: sum
    hidden: yes
    label: "Student Population"
    sql: ${TABLE}.finalmembership ;;
  }

  dimension: fk_budget_year {
    type: number
    hidden: yes
    sql: ${TABLE}.fkBudgetYear ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.parent_name ;;
  }

  dimension: child_type {
    type: string
    label: "Location Type"
    sql: ${TABLE}.child_type ;;
  }

  dimension: child_code {
    type: string
    label: "Location Code"
    sql: ${TABLE}.child_code ;;
  }

  dimension: child_name {
    type: string
    label: "Location Name"
    sql: ${TABLE}.child_name ;;
  }
  dimension: pk_entity_year {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pkentityyear ;;
  }
  measure: count_distinct_parent {
    type: count_distinct
    sql: ${parent_code} ;;
  }
  measure: count_distinct_location {
    type: count_distinct
    sql: ${child_code} ;;
  }
}
