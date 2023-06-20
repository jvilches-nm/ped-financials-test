- dashboard: recs_comp
  title: REC Comparisons DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TlbOW7N044INZra3Kt9NNj
  elements:
  - title: Budgeted Revenue by Fund Category
    name: Budgeted Revenue by Fund Category
    model: ped_public_financials_dev
    explore: budget_revenue_line
    type: looker_donut_multiples
    fields: [budget_revenue_line.projected_amt, coa_fund_hierarchy.fund_group, rec_names.rec_name_order,
      rec_names.rec_name]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      coa_object_hierarchy_revenue.object_code: "-%1%"
    sorts: [coa_fund_hierarchy.fund_group, rec_names.rec_name_order]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 15
    charts_across: 5
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors:
      Food Services - budget_revenue_line.projected_amt: "#A85573"
      Federal Grants - budget_revenue_line.projected_amt: "#E52592"
      General Fund - budget_revenue_line.projected_amt: "#E87F2F"
      Other - budget_revenue_line.projected_amt: "#9B8E20"
      State and Local Grants - budget_revenue_line.projected_amt: "#068993"
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
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
    hidden_fields: [rec_names.rec_name_order]
    listen:
      Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    row: 13
    col: 0
    width: 24
    height: 8
  - title: Actual Expenditures by Fund Category
    name: Actual Expenditures by Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_donut_multiples
    fields: [rec_names.rec_name_order, actuals_line.amount, coa_fund_hierarchy.fund_group,
      rec_names.rec_name]
    pivots: [coa_fund_hierarchy.fund_group]
    filters: {}
    sorts: [coa_fund_hierarchy.fund_group, rec_names.rec_name_order]
    limit: 5000
    column_limit: 50
    show_value_labels: true
    font_size: 15
    charts_across: 5
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors:
      State and Local Grants - actuals_line.amount: "#068993"
      General Fund - actuals_line.amount: "#F2C73C"
      Federal Grants - actuals_line.amount: "#E52592"
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Debt Service - actuals_line.amount,
            id: Debt Service - actuals_line.amount, name: Debt Service}, {axisId: Federal
              Grants - actuals_line.amount, id: Federal Grants - actuals_line.amount,
            name: Federal Grants}, {axisId: Food Services - actuals_line.amount, id: Food
              Services - actuals_line.amount, name: Food Services}, {axisId: General
              Fund - actuals_line.amount, id: General Fund - actuals_line.amount,
            name: General Fund}, {axisId: State and Local Grants - actuals_line.amount,
            id: State and Local Grants - actuals_line.amount, name: State and Local
              Grants}], showLabels: false, showValues: true, valueFormat: '00.0,,"M"',
        unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    hidden_fields: [rec_names.rec_name_order]
    listen:
      Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    row: 37
    col: 0
    width: 24
    height: 8
  - title: Budgeted Expenditures by Fund Category
    name: Budgeted Expenditures by Fund Category
    model: ped_public_financials_dev
    explore: budget_line
    type: looker_donut_multiples
    fields: [coa_fund_hierarchy.fund_group, budget_line.budget_amount, rec_names.rec_name_order,
      rec_names.rec_name]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      entity_year.parent_type: Regional Education Cooperative
    sorts: [coa_fund_hierarchy.fund_group, rec_names.rec_name_order]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 14
    charts_across: 5
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    series_colors:
      General Fund - budget_line.budget_amount: "#F2C73C"
      Federal Grants - budget_line.budget_amount: "#E52592"
      State and Local Grants - budget_line.budget_amount: "#068993"
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
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
    hidden_fields: [rec_names.rec_name_order]
    listen:
      Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    row: 21
    col: 0
    width: 24
    height: 8
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: looker_donut_multiples
    fields: [coa_fund_hierarchy.fund_group, actuals_revenue_line.amount, rec_names.rec_name_order,
      rec_names.rec_name]
    pivots: [coa_fund_hierarchy.fund_group]
    sorts: [coa_fund_hierarchy.fund_group, rec_names.rec_name_order]
    limit: 5000
    column_limit: 50
    show_value_labels: true
    font_size: 15
    charts_across: 5
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
        reverse: false
    series_colors:
      Debt Service - actuals_revenue_line.amount: "#F15922"
      Federal Grants - actuals_revenue_line.amount: "#E52592"
      Food Services - actuals_revenue_line.amount: "#A85573"
      General Fund - actuals_revenue_line.amount: "#A8876C"
      State and Local Grants - actuals_revenue_line.amount: "#068993"
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Debt Service - actuals_revenue_line.amount,
            id: Debt Service - actuals_revenue_line.amount, name: Debt Service}, {
            axisId: Federal Grants - actuals_revenue_line.amount, id: Federal Grants
              - actuals_revenue_line.amount, name: Federal Grants}, {axisId: Food
              Services - actuals_revenue_line.amount, id: Food Services - actuals_revenue_line.amount,
            name: Food Services}, {axisId: General Fund - actuals_revenue_line.amount,
            id: General Fund - actuals_revenue_line.amount, name: General Fund}, {
            axisId: State and Local Grants - actuals_revenue_line.amount, id: State
              and Local Grants - actuals_revenue_line.amount, name: State and Local
              Grants}], showLabels: false, showValues: true, valueFormat: '00.0,,"M"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [rec_names.rec_name_order]
    listen:
      Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    row: 29
    col: 0
    width: 24
    height: 8
  - title: ''
    name: ''
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_grid
    fields: [rec_names.rec_name_order, actuals_budget_period.reporting_period_code]
    filters:
      entity_year.parent_type: Regional Education Cooperative
    sorts: [rec_names.rec_name_order]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
    truncate_header: false
    series_labels:
      actuals_budget_period.count_entities: "# RECs"
      actuals_budget_period.reporting_period_code: Financial Approval Status
    series_cell_visualizations:
      actuals_budget_period.count_entities:
        is_active: false
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
    hidden_pivots: {}
    listen:
      Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    row: 8
    col: 0
    width: 11
    height: 5
  - name: Regional Education Cooperatives
    type: text
    title_text: Regional Education Cooperatives
    subtitle_text: ''
    body_text: "![RECMap](https://webed.ped.state.nm.us/sites/schooldirectory/SiteAssets/SitePages/RECHome/NMRECS_MAP.jpg)"
    row: 0
    col: 12
    width: 12
    height: 13
  - name: Actual Revenue and Expenditures to Date
    title: Actual Revenue and Expenditures to Date
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_revenue_line
      type: table
      fields: [rec_names.rec_name, actuals_revenue_line.amount]
      sorts: [actuals_revenue_line.amount desc 0]
      limit: 500
      column_limit: 50
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [rec_names.rec_name, actuals_line.amount]
      sorts: [actuals_line.amount desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: rec_names.rec_name
        source_field_name: rec_names.rec_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}, {axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: true,
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      actuals_revenue_line.amount: "#9B8E20"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    listen:
    - Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    - Fiscal Year: budget_year.year_name
      Select RECs: rec_names.rec_name
    row: 0
    col: 0
    width: 11
    height: 8
  filters:
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2022-2023
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: ped_public_financials_dev
    explore: budget_revenue_line
    listens_to_filters: []
    field: budget_year.year_name
  - name: Select RECs
    title: Select RECs
    type: field_filter
    default_value: "#1 - Four Corners REC,#10 - Southwest REC,#2 - Northwest REC,#3\
      \ - High Plains REC,#4 - Northeast REC,#5 - Central REC,#6 - REC,#7 - REC,#8\
      \ - Pecos Valley REC,#9 - REC"
    allow_multiple_values: true
    required: true
    ui_config:
      type: checkboxes
      display: popover
    model: ped_public_financials_dev
    explore: budget_revenue_line
    listens_to_filters: []
    field: rec_names.rec_name
