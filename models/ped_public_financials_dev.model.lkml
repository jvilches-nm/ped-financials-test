connection: "obms-reporting-test"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: ped_public_financials_test_datagroup {
  sql_trigger: SELECT max(modify_date) FROM sys.tables;;
  max_cache_age: "24 hours"
}

persist_with: ped_public_financials_test_datagroup

explore: actuals_revenue_line {
  sql_always_where: ${coa_account_type.code}='R'
                    and left(${coa_fund_hierarchy.fund_code}, 1)!='3' and left(${coa_fund_hierarchy.fund_code}, 1)!='4';;
  label: "Actual Revenue"

  join: actuals_budget_period {
    relationship: many_to_one
    type:  inner
    sql_on:  ${actuals_revenue_line.fk_actuals_budget_period}=${actuals_budget_period.pk_actuals_budget_period} ;;
  }
  join: coa_line {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_revenue_line.fk_coa_line}=${coa_line.pk_coaline} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_revenue_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_object_hierarchy_revenue {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy_revenue.pk_coa_object} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_budget_period.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  and ${entity_year.parent_type}!='Regional Education Cooperative';;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
  join: rec_names {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.parent_code}=${rec_names.rec_code} and ${budget_year.year_name}=${rec_names.fiscal_year} and ${entity_year.parent_type}='Regional Education Cooperative' ;;
  }
}

explore: actuals_line {
  sql_always_where: ${coa_account_type.code}='E'
                    and left(${coa_fund_hierarchy.fund_code}, 1)!='3' and left(${coa_fund_hierarchy.fund_code}, 1)!='4';;
  label: "Actual Expenditures"

  join: actuals_budget_period {
    relationship: many_to_one
    type:  inner
    sql_on:  ${actuals_line.fk_actuals_budget_period}=${actuals_budget_period.pk_actuals_budget_period} ;;
  }
  join: coa_line {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_line.fk_coa_line}=${coa_line.pk_coaline} ;;
  }
  join: coa_function_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_function}=${coa_function_hierarchy.pk_coa_function} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_job_class {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_job_class}=${coa_job_class.pk_coa_job_class} ;;
  }
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${actuals_budget_period.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  ;;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
  join: rec_names {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.parent_code}=${rec_names.rec_code} and ${budget_year.year_name}=${rec_names.fiscal_year}  ;;
  }
}

explore: budget_revenue_line {
  sql_always_where: ${coa_account_type.code}='R'
                    and left(${coa_object_hierarchy_revenue.object_code}, 1) !='1'
                    and left(${coa_fund_hierarchy.fund_code}, 1)!='3' and left(${coa_fund_hierarchy.fund_code}, 1)!='4';;
  label: "Budgeted Revenue"

  join: budget_fund {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_revenue_line.fk_budget_fund}=${budget_fund.pk_budget_fund} ;;
  }
  join: coa_line {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_revenue_line.fk_coaline}=${coa_line.pk_coaline} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: inner
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_revenue_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_object_hierarchy_revenue {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy_revenue.pk_coa_object} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_fund.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  ;;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
  join: rec_names {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.parent_code}=${rec_names.rec_code} and ${budget_year.year_name}=${rec_names.fiscal_year}  ;;
  }
}

explore: budget_line {
  sql_always_where: ${coa_account_type.code}='E'
                    and left(${coa_fund_hierarchy.fund_code}, 1)!='3' and left(${coa_fund_hierarchy.fund_code}, 1)!='4';;
  label: "Budgeted Expenditures"
  join: budget_fund {
    relationship: many_to_one
    type: inner
    sql_on: ${budget_line.fk_budget_fund}=${budget_fund.pk_budget_fund} ;;
  }
  join: coa_line {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_line.fk_coaline}=${coa_line.pk_coaline} ;;
  }
  join: coa_account_type {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_account_type}=${coa_account_type.pk_coa_account_type} ;;
  }
  join: coa_function_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_function}=${coa_function_hierarchy.pk_coa_function} ;;
  }
  join: coa_fund_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${coa_line.fk_coa_fund}=${coa_fund_hierarchy.pk_coa_fund} ;;
  }
  join: entity_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_line.fk_location_year}=${entity_year.pk_entity_year};;
  }
  join: coa_job_class {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_job_class}=${coa_job_class.pk_coa_job_class} ;;
  }
  join: coa_object_hierarchy {
    relationship: many_to_one
    type:  left_outer
    sql_on: ${coa_line.fk_coa_object}=${coa_object_hierarchy.pk_coa_object} ;;
  }
  join: coa_program_hierarchy {
    relationship: many_to_one
    type: left_outer
    sql_on:  ${coa_line.fk_coa_program}=${coa_program_hierarchy.pk_coa_program} ;;
  }
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${budget_fund.fk_budget_year}=${budget_year.pk_budget_year} ;;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.child_code}=${stars_locations.obms_code} and ${budget_year.year_name}=${stars_locations.location_year}  ;;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id} and ${stars_locations.location_year}=${stars_districts.location_year} ;;
  }
  join: rec_names {
    relationship: many_to_one
    type: left_outer
    sql_on: ${entity_year.parent_code}=${rec_names.rec_code} and ${budget_year.year_name}=${rec_names.fiscal_year}  ;;
  }
}

explore: stars_locations {
  label: "School Data"
  join: stars_districts {
    relationship: many_to_one
    type: inner
    sql_on: ${stars_locations.district_id}=${stars_districts.district_id}
      and ${stars_locations.location_year}=${stars_districts.location_year};;
  }
  join: rec_member_districts {
    relationship: one_to_one
    type:  left_outer
    sql_on: ${stars_districts.district_id}=${rec_member_districts.member_district_code} and ${stars_districts.location_year}=${rec_member_districts.fiscal_year};;
  }
  join: budget_year {
    relationship: many_to_one
    type: inner
    sql_on: ${stars_locations.location_year}=${budget_year.year_name} ;;
  }
}

explore: tribal_consultation {
  join: budget_year {
    relationship: many_to_one
    type: left_outer
    sql_on: ${tribal_consultation.school_year}=${budget_year.year_name};;
  }
  join: stars_districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_districts.location_year}=${tribal_consultation.school_year}
       and ${stars_districts.district_id} = ${tribal_consultation.district_code};;
  }
  join: stars_locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${stars_locations.location_year} = ${tribal_consultation.school_year}
       and ${stars_locations.location_code} = ${tribal_consultation.location_code}
      and ${tribal_consultation.location_code}!='';;
  }
}

explore: student_outcome_funding_narrative {
  join: budget_year {
    relationship: many_to_one
    type: inner
    sql_on: ${student_outcome_funding_narrative.school_year}=${budget_year.year_name};;
  }
  join: stars_districts {
    relationship: many_to_one
    type: inner
    sql_on: ${stars_districts.location_year}=${student_outcome_funding_narrative.school_year}
      and ${stars_districts.district_id} = ${student_outcome_funding_narrative.district_id};;
  }
  join: stars_locations {
    relationship: many_to_one
    type: inner
    sql_on: ${stars_locations.location_year} = ${student_outcome_funding_narrative.school_year}
       and ${stars_locations.location_code} = ${student_outcome_funding_narrative.location_code};;
  }

}

map_layer: my_neighborhood_layer {
  file: "/Map_Shapefiles/dist_school_map.topojson"
  property_key: "name"

}
