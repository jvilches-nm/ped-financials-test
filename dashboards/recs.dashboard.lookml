- dashboard: recs
  title: RECs Dashboard NEW TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: aIXsNT1ZuPeDBtXdNYNXVl
  elements:
  - title: Actual Expenditures to Date
    name: Actual Expenditures to Date
    model: ped_public_financials_dev
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#068993"
    single_value_title: ''
    value_format: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Parent Type: entity_year.parent_type
      Select REC: rec_names.rec_name
    row: 4
    col: 12
    width: 11
    height: 2
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    subtitle_text: ''
    body_text: The latest fiscal year data shows only the approved quarterly data
      - it will not show the full year of data until all four quarters have been submitted
      and approved. Data will be updated throughout the year as it is approved in
      the Operating Budget Management System.
    row: 18
    col: 0
    width: 24
    height: 2
  - title: Actual Expenditures by Fund
    name: Actual Expenditures by Fund
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_fund_hierarchy.fund_group]
    sorts: [actuals_line.amount desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '0.00,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Parent Type: entity_year.parent_type
      Select REC: rec_names.rec_name
    row: 28
    col: 0
    width: 23
    height: 8
  - title: Regional Education Cooperatives
    name: Regional Education Cooperatives
    model: ped_public_financials_dev
    explore: budget_line
    type: single_value
    fields: [entity_year.count_distinct_parent]
    sorts: [entity_year.count_distinct_parent desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Parent Type: entity_year.parent_type
      Select REC: rec_names.rec_name
    row: 0
    col: 12
    width: 11
    height: 2
  - name: ''
    type: text
    title_text: ''
    body_text: "![RECMap](https://webed.ped.state.nm.us/sites/schooldirectory/SiteAssets/SitePages/RECHome/NMRECS_MAP.jpg)"
    row: 5
    col: 0
    width: 12
    height: 13
  - title: Actual Revenue to Date
    name: Actual Revenue to Date
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: single_value
    fields: [actuals_revenue_line.amount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#9B8E20"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Parent Type: entity_year.parent_type
      Select REC: rec_names.rec_name
    row: 2
    col: 12
    width: 11
    height: 2
  - title: Actual Revenue by Fund
    name: Actual Revenue by Fund
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: looker_bar
    fields: [coa_fund_hierarchy.fund_group, actuals_revenue_line.amount]
    filters:
      entity_year.parent_name: ''
    sorts: [actuals_revenue_line.amount desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_revenue_line.amount: "#9B8E20"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
      Parent Type: entity_year.parent_type
      Select REC: rec_names.rec_name
    row: 20
    col: 0
    width: 23
    height: 8
  - name: REC Overview
    type: text
    title_text: REC Overview
    body_text: Since their inception in 1984 RECs through their administrative attachment
      to PED are allowed to enter into Intergovernmental Agreements (IGAs) with other
      State Agencies.  Each REC since then has grown differently in terms of programs
      of service and work done on behalf of their member districts and those state
      agencies.  There will always be a discrepancy between Budgeted Revenues and
      Expenditures and Actual Revenues and Expenditures because of changes in program
      and use of funds directed by the IGA issuing agency. For more information about
      New Mexico RECs, please follow this <a href="https://www.nmreca.org/Home" target="_BLANK">link</a>.
    row: 0
    col: 0
    width: 12
    height: 5
  - title: REC Member Districts
    name: REC Member Districts
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_grid
    fields: [rec_member_districts.rec_name, stars_districts.district_name, stars_districts.district_size]
    sorts: [rec_member_districts.rec_name]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      rec_member_districts.rec_name: REC Name
    series_cell_visualizations:
      stars_districts.total_student_pop:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Year: rec_member_districts.fiscal_year
      Select REC: rec_member_districts.rec_name
    row: 9
    col: 12
    width: 11
    height: 9
  - name: " (2)"
    type: text
    title_text: ''
    body_text: '###This is a list of state districts that are REC members. For a complete
      list of REC member entities please follow this <a href="https://tb2cdn.schoolwebmasters.com/accnt_171650/site_257648/Documents/RECA-Districts-Distribution-Map.pdf"
      target="_BLANK">link</a>.'
    row: 6
    col: 12
    width: 11
    height: 3
  filters:
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2021-2022
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options: []
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    listens_to_filters: []
    field: budget_year.year_name
  - name: Parent Type
    title: Parent Type
    type: field_filter
    default_value: Regional Education Cooperative
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options:
      - Regional Education Cooperative
    model: ped_public_financials_dev
    explore: actuals_line
    listens_to_filters: []
    field: entity_year.parent_type
  - name: Select REC
    title: Select REC
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: ped_public_financials_dev
    explore: actuals_line
    listens_to_filters: []
    field: rec_names.rec_name
