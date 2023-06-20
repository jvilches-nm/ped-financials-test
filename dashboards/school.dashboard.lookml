- dashboard: school
  title: School Dashboard DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: E938PMmnOdc2WNOWmn79DD
  elements:
  - title: Actual Expenditures to Date
    name: Actual Expenditures to Date
    model: ped_public_financials_dev
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount]
    sorts: [actuals_line.amount desc]
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
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 13
    col: 9
    width: 6
    height: 3
  - title: Map
    name: Map
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_map
    fields: [stars_locations.map_location, stars_locations.student_pop, stars_locations.School_name,
      stars_locations.school_level_col, stars_locations.location_type, stars_locations.location_type_name]
    sorts: [stars_locations.student_pop desc]
    limit: 500
    dynamic_fields: [{table_calculation: schooltype, label: SchoolType, expression: 'case(when(${stars_locations.location_type_name}="District
          School", 1), when (${stars_locations.location_type_name}="State Charter
          School", 2), 0)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: building
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 34.70820081518175
    map_longitude: -106.64234160678463
    map_zoom: 15
    map_marker_radius_fixed: 5
    map_value_colors: ["#068993", "#F15922", "#D9C202"]
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 2
    defaults_version: 1
    hidden_fields: [stars_locations.location_type, stars_locations.student_pop]
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 4
    col: 15
    width: 9
    height: 13
  - title: Actual Expenditures by Object and Fund Category
    name: Actual Expenditures by Object and Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_object_hierarchy.object_group, actuals_line.amount, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    sorts: [actuals_line.amount desc 3, coa_fund_hierarchy.fund_group]
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '$0,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
    series_labels:
      actuals_line.amount: Spending
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 53
    col: 8
    width: 16
    height: 7
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.pk_pop, stars_locations.kf_pop, stars_locations.g1_pop,
      stars_locations.g2_pop, stars_locations.g3_pop, stars_locations.g4_pop, stars_locations.g5_pop,
      stars_locations.g6_pop, stars_locations.g7_pop, stars_locations.g8_pop, stars_locations.g9_pop,
      stars_locations.g10_pop, stars_locations.g11_pop, stars_locations.g12_pop]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    series_labels:
      stars_locations.g1_pop: G1
      stars_locations.g2_pop: G2
      stars_locations.g3_pop: G3
      stars_locations.g4_pop: G4
      stars_locations.g5_pop: G5
      stars_locations.g6_pop: G6
      stars_locations.g7_pop: G7
      stars_locations.g8_pop: G8
      stars_locations.g9_pop: G9
      stars_locations.g10_pop: G10
      stars_locations.g11_pop: G11
      stars_locations.g12_pop: G12
      stars_locations.kf_pop: K
      stars_locations.kn_pop: KN
      stars_locations.pk_pop: PreK
      stars_locations.student_pop: Total Students
    label_rotation: -90
    show_dropoff: false
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 21
    col: 0
    width: 24
    height: 7
  - title: School Information
    name: School Information
    model: ped_public_financials_dev
    explore: stars_locations
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [stars_districts.district_name, stars_locations.location_type_name, stars_locations.School_name_plain,
      stars_locations.location_county, stars_locations.school_level, stars_locations.school_size,
      stars_locations.student_pop]
    sorts: [stars_locations.student_pop desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      stars_locations.student_pop: Students
      stars_locations.location_type_name: Location Type
    show_view_names: false
    font_size_main: '8'
    orientation: vertical
    style_stars_districts.district_name: "#3A4245"
    show_title_stars_districts.district_name: true
    title_placement_stars_districts.district_name: above
    value_format_stars_districts.district_name: ''
    style_stars_locations.location_type_name: "#3A4245"
    show_title_stars_locations.location_type_name: true
    title_placement_stars_locations.location_type_name: above
    value_format_stars_locations.location_type_name: ''
    show_comparison_stars_locations.location_type_name: false
    style_stars_locations.School_name_plain: "#3A4245"
    show_title_stars_locations.School_name_plain: true
    title_placement_stars_locations.School_name_plain: above
    value_format_stars_locations.School_name_plain: ''
    show_comparison_stars_locations.School_name_plain: false
    style_stars_locations.location_county: "#3A4245"
    show_title_stars_locations.location_county: true
    title_placement_stars_locations.location_county: above
    value_format_stars_locations.location_county: ''
    show_comparison_stars_locations.location_county: false
    style_stars_locations.school_level: "#3A4245"
    show_title_stars_locations.school_level: true
    title_placement_stars_locations.school_level: above
    value_format_stars_locations.school_level: ''
    show_comparison_stars_locations.school_level: false
    style_stars_locations.school_size: "#3A4245"
    show_title_stars_locations.school_size: true
    title_placement_stars_locations.school_size: above
    value_format_stars_locations.school_size: ''
    show_comparison_stars_locations.school_size: false
    style_stars_locations.student_pop: "#3A4245"
    show_title_stars_locations.student_pop: true
    title_placement_stars_locations.student_pop: above
    value_format_stars_locations.student_pop: ''
    show_comparison_stars_locations.student_pop: false
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
    column_order: ["$$$_row_numbers_$$$", stars_locations.School_name_plain, stars_districts.district_name,
      stars_locations.location_county, stars_locations.school_size, stars_locations.school_level,
      stars_locations.location_type_name, stars_locations.student_pop]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      stars_locations.school_size: 81
    series_cell_visualizations:
      stars_locations.student_pop:
        is_active: true
        palette:
          palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
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
    defaults_version: 0
    series_types: {}
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 4
    col: 0
    width: 9
    height: 13
  - title: Actual Expenditures by Job and Fund Category for Salary/Compensation
    name: Actual Expenditures by Job and Fund Category for Salary/Compensation
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_job_class.job_rollup_name, actuals_line.amount, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      coa_job_class.job_name: "-No Job Class"
    sorts: [actuals_line.amount desc 2, coa_fund_hierarchy.fund_group]
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
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Federal Grants - actuals_line.amount,
            id: Federal Grants - actuals_line.amount, name: Federal Grants}, {axisId: Food
              Services - actuals_line.amount, id: Food Services - actuals_line.amount,
            name: Food Services}, {axisId: General Fund - actuals_line.amount, id: General
              Fund - actuals_line.amount, name: General Fund}, {axisId: State and
              Local Grants - actuals_line.amount, id: State and Local Grants - actuals_line.amount,
            name: State and Local Grants}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Food Services - actuals_line.amount: "#A85573"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 60
    col: 8
    width: 16
    height: 7
  - name: Students
    type: text
    title_text: Students
    body_text: ''
    row: 19
    col: 0
    width: 24
    height: 2
  - title: Actual Expenditures by Fund Category
    name: Actual Expenditures by Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_fund_hierarchy.fund_group]
    sorts: [coa_fund_hierarchy.fund_group desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_of_total, label: Percent of Total,
        expression: "${actuals_line.amount}/sum(${actuals_line.amount})", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
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
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
      percent_of_total: "#000505"
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 38
    col: 12
    width: 12
    height: 8
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    subtitle_text: "* Budget and revenue available at the individual school level\
      \ for charter schools only."
    body_text: ''
    row: 28
    col: 0
    width: 24
    height: 2
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
    note_state: collapsed
    note_display: hover
    note_text: Applies to Charter Schools, not to District Schools.
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 7
    col: 9
    width: 6
    height: 3
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: looker_bar
    fields: [actuals_revenue_line.amount, coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: Charter School,District School
    sorts: [coa_fund_hierarchy.fund_group desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_of_total, label: Percent of Total,
        expression: "${actuals_revenue_line.amount}/sum(${actuals_revenue_line.amount})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
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
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 364b5000-be28-40e9-a495-81343e4830d5
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}, {axisId: percent_of_total,
            id: percent_of_total, name: Percent of Total}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      percent_of_total: "#9B2030"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 38
    col: 0
    width: 12
    height: 8
  - title: Avg Spending per Student to Date
    name: Avg Spending per Student to Date
    model: ped_public_financials_dev
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount, stars_locations.student_pop]
    filters:
      coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: avg_spending_per_student, label: Avg Spending
          Per Student, expression: "${actuals_line.amount}/${stars_locations.student_pop}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: hover
    note_text: Total school expenditures to date for the selected school year not
      including capital or debt service funds divided by the number of school students
      based on the 40-day count for that school year. This average should be considered
      an estimate for comparison purposes and not an actual tally of the spending
      per student.
    hidden_fields: [actuals_line.amount, stars_locations.student_pop]
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
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 17
    col: 8
    width: 8
    height: 2
  - title: Actual Expenditures by Object for Special Ed, At-Risk and Bilingual Prog
    name: Actual Expenditures by Object for Special Ed, At-Risk and Bilingual Prog
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_program_hierarchy.program_name, actuals_line.amount, coa_object_hierarchy.object_group]
    pivots: [coa_object_hierarchy.object_group]
    filters:
      coa_program_hierarchy.program_name: Bilingual Education Programs,Alternative
        and At-Risk Programs,At-Risk Special Ed Programs,Extended Learning Time Programs,K-5
        Plus Programs,Special Ed Programs
    sorts: [coa_object_hierarchy.object_group, actuals_line.amount desc 0]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Instruction - actuals_line.amount,
            id: Instruction - actuals_line.amount, name: Instruction}, {axisId: Support
              Services - actuals_line.amount, id: Support Services - actuals_line.amount,
            name: Support Services}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
      Instruction - actuals_line.amount: "#068993"
      Support Services - actuals_line.amount: "#F2C73C"
      Operation of Non-Instructional Services - actuals_line.amount: "#A85573"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Select School Name: stars_locations.School_name_plain
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
    row: 67
    col: 0
    width: 24
    height: 9
  - title: Avg Instructional Spending per Student to Date
    name: Avg Instructional Spending per Student to Date
    model: ped_public_financials_dev
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount, stars_locations.student_pop]
    filters:
      coa_function_hierarchy.rollup_function_name: Instruction & Support
      coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: avg_spending_per_student, label: Avg Spending
          Per Student, expression: "${actuals_line.amount}/${stars_locations.student_pop}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    note_state: collapsed
    note_display: hover
    note_text: Total school expenditures for the Instructional function to date for
      the selected school year not including capital or debt service funds divided
      by the number of school students based on the 40-day count for that school year.
      This average should be considered an estimate for comparison purposes and not
      an actual tally of the spending per student.
    hidden_fields: [actuals_line.amount, stars_locations.student_pop]
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
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 17
    col: 17
    width: 7
    height: 2
  - title: Actual Expenditures by Job for Salary/Compensation
    name: Actual Expenditures by Job for Salary/Compensation
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_pie
    fields: [coa_job_class.job_rollup_name, actuals_line.amount]
    filters:
      coa_job_class.job_name: "-No Job Class"
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors: {}
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Federal Grants - actuals_line.amount,
            id: Federal Grants - actuals_line.amount, name: Federal Grants}, {axisId: Food
              Services - actuals_line.amount, id: Food Services - actuals_line.amount,
            name: Food Services}, {axisId: General Fund - actuals_line.amount, id: General
              Fund - actuals_line.amount, name: General Fund}, {axisId: State and
              Local Grants - actuals_line.amount, id: State and Local Grants - actuals_line.amount,
            name: State and Local Grants}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 60
    col: 0
    width: 8
    height: 7
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_pie
    fields: [coa_object_hierarchy.object_group, actuals_line.amount]
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors:
      actuals_line.amount: "#068993"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
    series_labels:
      actuals_line.amount: Spending
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
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '$0,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 53
    col: 0
    width: 8
    height: 7
  - title: Financial Approval Status
    name: Financial Approval Status
    model: ped_public_financials_dev
    explore: actuals_line
    type: single_value
    fields: [actuals_budget_period.reporting_period_code]
    sorts: [actuals_budget_period.reporting_period_code]
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
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 17
    col: 0
    width: 7
    height: 2
  - title: Budgeted Revenue
    name: Budgeted Revenue
    model: ped_public_financials_dev
    explore: budget_revenue_line
    type: single_value
    fields: [budget_revenue_line.projected_amt]
    filters:
      coa_object_hierarchy_revenue.object_code: "-1%"
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#A85573"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Applies to Charter Schools, not to District Schools. Does not include
      restricted or unrestricted cash balances.
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 4
    col: 9
    width: 6
    height: 3
  - title: Budgeted Expenditures
    name: Budgeted Expenditures
    model: ped_public_financials_dev
    explore: budget_line
    type: single_value
    fields: [budget_line.budget_amount]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#F15922"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: Applies to Charter Schools, not to District Schools.
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 10
    col: 9
    width: 6
    height: 3
  - title: Budgeted Revenue by Fund Category
    name: Budgeted Revenue by Fund Category
    model: ped_public_financials_dev
    explore: budget_revenue_line
    type: looker_bar
    fields: [budget_revenue_line.projected_amt, coa_fund_hierarchy.fund_group]
    filters:
      coa_object_hierarchy_revenue.object_code: "-1%"
    sorts: [coa_fund_hierarchy.fund_group desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${budget_revenue_line.projected_amt}/sum(${budget_revenue_line.projected_amt})",
        label: Percent of Total, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_total, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_revenue_line.projected_amt,
            id: budget_revenue_line.projected_amt, name: Budgeted Revenue}, {axisId: percent_of_total,
            id: percent_of_total, name: Percent of Total}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      budget_revenue_line.projected_amt: "#853955"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Does not include restricted or unrestricted cash balances.
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 30
    col: 0
    width: 12
    height: 8
  - title: Budgeted Expenditures by Fund Category
    name: Budgeted Expenditures by Fund Category
    model: ped_public_financials_dev
    explore: budget_line
    type: looker_bar
    fields: [budget_line.budget_amount, coa_fund_hierarchy.fund_group]
    sorts: [coa_fund_hierarchy.fund_group desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${budget_line.budget_amount}/sum(${budget_line.budget_amount})",
        label: Percent of Total, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_total, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_line.budget_amount,
            id: budget_line.budget_amount, name: Budgeted Expenditures}, {axisId: percent_of_total,
            id: percent_of_total, name: Percent of Total}], showLabels: true, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 30
    col: 12
    width: 12
    height: 8
  - title: Actual Expenditures by Function and Fund Category
    name: Actual Expenditures by Function and Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_fund_hierarchy.fund_group, coa_function_hierarchy.rollup_function_name]
    pivots: [coa_fund_hierarchy.fund_group]
    sorts: [actuals_line.amount desc 3, coa_fund_hierarchy.fund_group]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: bottom, series: [{axisId: percent_of_total_expenditures,
            id: percent_of_total_expenditures, name: Percent of Total Expenditures}],
        showLabels: false, showValues: false, valueFormat: '0.00,, "M"', unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    label_value_format: ''
    series_types:
      percent_of_total_expenditures: scatter
    series_colors:
      Assistants: "#e3e3e3"
      percent_of_total_expenditures: "#000000"
      Debt Service - actuals_line.amount: "#F15922"
      Federal Grants - actuals_line.amount: "#068993"
      Food Services - actuals_line.amount: "#A85573"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
    series_labels:
      actuals_line.amount: Expenditures
      percent_of_total_expenditures: Percent of Total
    series_point_styles:
      percent_of_total_expenditures: diamond
    value_labels: labels
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      actuals_line.amount:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    rotation: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    up_color: "#FCCF41"
    down_color: "#7CC8FA"
    total_color: "#f56776"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hide_totals: false
    hide_row_totals: false
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 46
    col: 8
    width: 16
    height: 7
  - title: Actual Expenditures by Function Category
    name: Actual Expenditures by Function Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_function_hierarchy.rollup_function_name]
    sorts: [actuals_line.amount desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
        reverse: false
    series_colors:
      Assistants: "#e3e3e3"
      percent_of_total_expenditures: "#000000"
      Debt Service - actuals_line.amount: "#F15922"
      Federal Grants - actuals_line.amount: "#068993"
      Food Services - actuals_line.amount: "#A85573"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
    series_labels:
      actuals_line.amount: Expenditures
      percent_of_total_expenditures: Percent of Total
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: bottom, series: [{axisId: percent_of_total_expenditures,
            id: percent_of_total_expenditures, name: Percent of Total Expenditures}],
        showLabels: false, showValues: false, valueFormat: '0.00,, "M"', unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    label_value_format: ''
    series_types: {}
    series_point_styles:
      percent_of_total_expenditures: diamond
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      actuals_line.amount:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    rotation: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    up_color: "#FCCF41"
    down_color: "#7CC8FA"
    total_color: "#f56776"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hide_totals: false
    hide_row_totals: false
    listen:
      Location Type: stars_locations.location_type_name
      Fiscal Year: budget_year.year_name
      Select School Name: stars_locations.School_name_plain
    row: 46
    col: 0
    width: 8
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"School Overview"}],"align":"center"},{"type":"h3","align":"left","children":[{"text":"Overview
      of individual school education finances. To learn more about the data displayed
      or to find definitions of terms please click "},{"type":"a","url":"https://openbooks.ped.nm.gov/learn-more/","children":[{"text":"here"}],"id":1686248838730},{"text":"."}],"id":1686249627178},{"type":"p","children":[{"text":""}],"id":1686249627179},{"type":"h3","children":[{"text":"Budgeted
      amounts cover the entire school year. Year-to-date actual revenue and expenditure
      amounts are updated throughout the year as they are submitted and approved in
      the Operating Budget Management System. Starting with the 2022-2023 school year,
      acutal expenditure amounts will be available for individual district schools.
      Revenue and budget amounts are only available for charter schools at the individual
      school level. "}],"id":1686249627180},{"type":"p","children":[{"text":""}],"id":1686249627181}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Location Type
    title: Location Type
    type: field_filter
    default_value: District School,Local Charter School,State Charter School
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options:
      - District School
      - Local Charter School
      - State Charter School
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_type_name
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: 2022-2023
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    listens_to_filters: []
    field: budget_year.year_name
  - name: Select School Name
    title: Select School Name
    type: field_filter
    default_value: 21ST CENTURY PUBLIC ACADEMY
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: popover
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: [Fiscal Year, Location Type]
    field: stars_locations.School_name_plain
