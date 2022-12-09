- dashboard: district_student_outcome_narratives
  title: District Student Outcome Narratives
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: GyyezFiIjdTTht7sUJJpW1
  elements:
  - title: Funding Narratives
    name: Funding Narratives
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    type: table
    fields: [student_outcome_funding_narrative.fund_code, student_outcome_funding_narrative.fund_name,
      student_outcome_funding_narrative.object_code, student_outcome_funding_narrative.object_name,
      student_outcome_funding_narrative.actual_revenue_amount, student_outcome_funding_narrative.student_outcome_narrative]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [student_outcome_funding_narrative.actual_revenue_amount desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 3
    col: 0
    width: 23
    height: 11
  - name: Student Outcome Narratives - Federal & Local Funding
    type: text
    title_text: Student Outcome Narratives - Federal & Local Funding
    subtitle_text: ''
    body_text: 'A school district that received federal or local revenue in the prior
      fiscal year shall report to the department on the actual uses of that revenue,
      including a comprehensive evaluation of how the programs and services provided
      with that revenue improved outcomes for students or how capital projects undertaken
      improved the condition of a school building. '
    row: 0
    col: 0
    width: 23
    height: 3
  filters:
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2021-2022
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
      options:
      - 2021-2022
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    listens_to_filters: []
    field: budget_year.year_name
  - name: District Type
    title: District Type
    type: field_filter
    default_value: State District
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - State District
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    listens_to_filters: []
    field: stars_districts.district_type
  - name: District Name
    title: District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    listens_to_filters: [District Type]
    field: stars_districts.district_name
