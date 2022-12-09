- dashboard: school_student_outcome_narratives
  title: School Student Outcome Narratives
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Nb1FPSaGPO5xau2avX1bKL
  elements:
  - title: Funding Narratives
    name: Funding Narratives
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    type: table
    fields: [student_outcome_funding_narrative.fund_code, student_outcome_funding_narrative.fund_name,
      student_outcome_funding_narrative.object_code, student_outcome_funding_narrative.object_name,
      student_outcome_funding_narrative.actual_revenue_amount, student_outcome_funding_narrative.student_outcome_narrative]
    filters: {}
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
      Fiscal Year: budget_year.year_name
      Location Type: stars_locations.location_type
      School Name: stars_locations.School_name_plain
    row: 3
    col: 0
    width: 23
    height: 11
  - name: 'Student Outcome Narratives - Federal & Local Funding '
    type: text
    title_text: 'Student Outcome Narratives - Federal & Local Funding '
    subtitle_text: ''
    body_text: 'A charter school that received federal or local revenue in the prior
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
  - name: Location Type
    title: Location Type
    type: field_filter
    default_value: Charter School
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: popover
      options:
      - Charter School
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    listens_to_filters: []
    field: stars_locations.location_type
  - name: School Name
    title: School Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials_dev
    explore: student_outcome_funding_narrative
    listens_to_filters: [Location Type]
    field: stars_locations.School_name_plain
