- dashboard: program_dashboard
  title: Program Dashboard DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: tgUWdlS3D2wdqwVqokSkED
  elements:
  - title: Expenditures by Fund Category and Program
    name: Expenditures by Fund Category and Program
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_program_hierarchy.program_name, actuals_line.amount, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,At-Risk
        Special Ed Programs,Bilingual Education Programs,Extended Learning Time Programs,K-5
        Plus Programs,Special Ed Programs
    sorts: [actuals_line.amount desc 0, coa_program_hierarchy.program_name, coa_fund_hierarchy.fund_group]
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
    stacking: normal
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
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Alternative and At-Risk
              Programs - actuals_line.amount, id: Alternative and At-Risk Programs
              - actuals_line.amount, name: Alternative and At-Risk Programs}, {axisId: At-Risk
              Special Programs - actuals_line.amount, id: At-Risk Special Programs
              - actuals_line.amount, name: At-Risk Special Programs}, {axisId: Special
              Programs - actuals_line.amount, id: Special Programs - actuals_line.amount,
            name: Special Programs}], showLabels: false, showValues: true, valueFormat: '0.00,,"M"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 5
    col: 0
    width: 24
    height: 8
  - name: Special Ed, At-Risk, Bilingual, Extended Learning Time, and K5+ Programs
    type: text
    title_text: Special Ed, At-Risk, Bilingual, Extended Learning Time, and K5+ Programs
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 0
    width: 24
    height: 2
  - title: Federal Fund Expenditures by Program and Object Category
    name: Federal Fund Expenditures by Program and Object Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_object_hierarchy.object_group, actuals_line.amount, coa_program_hierarchy.program_name]
    pivots: [coa_program_hierarchy.program_name]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,At-Risk
        Special Ed Programs,Bilingual Education Programs,Extended Learning Time Programs,K-5
        Plus Programs,Special Ed Programs
      coa_fund_hierarchy.fund_group: Federal Grants
    sorts: [coa_program_hierarchy.program_name, coa_object_hierarchy.object_group]
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
    stacking: normal
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Alternative and At-Risk
              Programs - actuals_line.amount, id: Alternative and At-Risk Programs
              - actuals_line.amount, name: Alternative and At-Risk Programs}, {axisId: At-Risk
              Special Programs - actuals_line.amount, id: At-Risk Special Programs
              - actuals_line.amount, name: At-Risk Special Programs}, {axisId: Special
              Programs - actuals_line.amount, id: Special Programs - actuals_line.amount,
            name: Special Programs}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 13
    col: 12
    width: 12
    height: 9
  - title: General Fund Expenditures by Program and Object Category
    name: General Fund Expenditures by Program and Object Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_object_hierarchy.object_group, actuals_line.amount, coa_program_hierarchy.program_name]
    pivots: [coa_program_hierarchy.program_name]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,At-Risk
        Special Ed Programs,Bilingual Education Programs,Extended Learning Time Programs,K-5
        Plus Programs,Special Ed Programs
      coa_fund_hierarchy.fund_group: General Fund
    sorts: [coa_program_hierarchy.program_name, coa_object_hierarchy.object_group]
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
    stacking: normal
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Alternative and At-Risk
              Programs - actuals_line.amount, id: Alternative and At-Risk Programs
              - actuals_line.amount, name: Alternative and At-Risk Programs}, {axisId: At-Risk
              Special Programs - actuals_line.amount, id: At-Risk Special Programs
              - actuals_line.amount, name: At-Risk Special Programs}, {axisId: Special
              Programs - actuals_line.amount, id: Special Programs - actuals_line.amount,
            name: Special Programs}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'Select District or Charter:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
    row: 13
    col: 0
    width: 12
    height: 9
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      ###The latest fiscal year data shows only the approved quarterly data - it will not show the full year of data until all four quarters have been submitted and approved. Data will be updated throughout the year as it is approved in the Operating Budget Management System.

      ### Program coding is only available for the Instructional category and select Support Services categories.
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2022-2023
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
  - name: 'Select District or Charter:'
    title: 'Select District or Charter:'
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: [Fiscal Year, 'Select Fund Name:']
    field: stars_locations.district_name
