- dashboard: district
  title: District Dashboard NEW TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: SLykS4ag06qY3vZBbWyYNC
  elements:
  - title: Actual Expenditures to Date
    name: Actual Expenditures to Date
    model: ped_public_financials_test
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount]
    filters:
      stars_locations.location_type: "-Charter School"
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 5
    col: 0
    width: 5
    height: 2
  - title: Actual Expenditures by Job and Fund Category for Salary/Compensation
    name: Actual Expenditures by Job and Fund Category for Salary/Compensation
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_job_class.job_rollup_name, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: "-Charter School"
      coa_job_class.job_rollup_name: "-None"
    sorts: [actuals_line.amount desc 0, coa_fund_hierarchy.fund_group]
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
            id: actuals_line.amount, name: Spends}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    label_value_format: ''
    series_types: {}
    series_colors:
      Assistants: "#e3e3e3"
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Food Services - actuals_line.amount: "#A85573"
      General Fund - actuals_line.amount: "#A8876C"
    series_labels:
      actuals_line.amount: Spends
    value_labels: legend
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 38
    col: 7
    width: 17
    height: 8
  - title: School Types and Levels
    name: School Types and Levels
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_grid
    fields: [stars_locations.count, stars_locations.location_type, stars_locations.school_level]
    filters:
      stars_locations.location_type: District School,Charter School
    sorts: [stars_locations.count desc]
    limit: 500
    show_view_names: true
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
      stars_locations.location_type: School Type
      stars_locations.count: Schools
      stars_locations.school_level: School Level
    series_cell_visualizations:
      stars_locations.count:
        is_active: true
        palette:
          palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    style_stars_locations.count: "#3A4245"
    show_title_stars_locations.count: false
    title_override_stars_locations.count: District Schools
    title_placement_stars_locations.count: below
    value_format_stars_locations.count: ''
    custom_color: "#b559ff"
    single_value_title: District Schools
    defaults_version: 1
    series_types: {}
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    row: 5
    col: 11
    width: 10
    height: 6
  - title: Schools
    name: Schools
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_map
    fields: [stars_locations.map_location, stars_locations.School_name, stars_locations.school_size_col,
      stars_locations.location_type_name, stars_locations.school_level, stars_locations.student_pop]
    filters:
      stars_locations.location_type: Charter School,District School
    sorts: [stars_locations.student_pop desc]
    limit: 500
    dynamic_fields: [{table_calculation: schooltypecol, label: SchoolTypeCol, expression: 'case(when(${stars_locations.location_type_name}="District
          School", 1), when(${stars_locations.location_type_name}="State Charter School",
          2), 3)', value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: school
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 34.87157719328419
    map_longitude: -106.66107178665699
    map_zoom: 10
    map_marker_radius_fixed: 5
    map_marker_color: ["#068993"]
    map_value_colors: ["#F15922", "#D9C202", "#068993"]
    map_value_scale_clamp_min: 1
    map_value_scale_clamp_max: 3
    defaults_version: 1
    hidden_fields: [stars_locations.student_pop, studentpopulation]
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    row: 3
    col: 5
    width: 6
    height: 8
  - title: District Schools
    name: District Schools
    model: ped_public_financials_test
    explore: stars_locations
    type: single_value
    fields: [stars_locations.count]
    filters:
      stars_locations.location_type: District School
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
    single_value_title: District Schools
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_districts.location_year
      District Type: stars_districts.district_type
    row: 3
    col: 11
    width: 5
    height: 2
  - title: Actual Expenditures by Fund Category
    name: Actual Expenditures by Fund Category
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [coa_fund_hierarchy.fund_group desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_of_total, label: Percent of Total,
        expression: "${actuals_line.amount}/sum(${actuals_line.amount})", value_format: !!null '',
        value_format_name: percent_1, _kind_hint: measure, _type_hint: number}]
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
    point_style: circle
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}, {axisId: percent_of_total,
            id: percent_of_total, name: Percent of Total}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    font_size: '12'
    series_types: {}
    series_colors:
      percent_of_total: "#000000"
    series_labels:
      percent_of_total: Percent of Total
    series_point_styles:
      percent_of_total: diamond
    value_labels: labels
    label_type: labPer
    rotation: false
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 20
    col: 12
    width: 12
    height: 10
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials_test
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
    show_x_axis_label: true
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: Students, orientation: left, series: [{axisId: stars_locations.student_pop,
            id: stars_locations.student_pop, name: Student Pop}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Grade
    series_types: {}
    series_colors: {}
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
      stars_locations.kf_pop: KF
      stars_locations.kn_pop: KN
      stars_locations.pk_pop: PK
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    row: 11
    col: 0
    width: 24
    height: 7
  - title: Local Charters
    name: Local Charters
    model: ped_public_financials_test
    explore: stars_locations
    type: single_value
    fields: [stars_locations.count]
    filters:
      stars_locations.location_type: Charter School
    sorts: [stars_locations.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: location_count, label: location-count, expression: 'coalesce(${stars_locations.count},
          0)', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Local Charter Schools
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
    hidden_fields: [stars_locations.count]
    series_types: {}
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    row: 3
    col: 21
    width: 3
    height: 4
  - title: Students
    name: Students
    model: ped_public_financials_test
    explore: stars_locations
    type: single_value
    fields: [stars_locations.student_pop]
    filters:
      stars_locations.location_type: "-Charter School"
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
    single_value_title: District Students
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_districts.location_year
      District Type: stars_districts.district_type
    row: 3
    col: 16
    width: 5
    height: 2
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    body_text: ''
    row: 18
    col: 0
    width: 24
    height: 2
  - name: School List
    type: text
    title_text: School List
    body_text: ''
    row: 53
    col: 0
    width: 24
    height: 2
  - name: School List (2)
    title: School List
    title_hidden: true
    merged_queries:
    - model: ped_public_financials_test
      explore: stars_locations
      type: table
      fields: [stars_locations.School_name_plain, stars_locations.location_type, stars_locations.school_level,
        stars_locations.grade_range, stars_locations.school_size, stars_locations.student_pop]
      filters:
        stars_locations.location_type: "-Offsite"
      sorts: [stars_locations.School_name_plain]
      limit: 500
      join_fields: []
    - model: ped_public_financials_test
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_locations.School_name_plain]
      sorts: [actuals_line.amount desc]
      limit: 500
      join_fields:
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    - model: ped_public_financials_test
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, stars_locations.School_name_plain]
      filters:
        stars_locations.School_name_plain: "-NULL"
      sorts: [actuals_revenue_line.amount desc]
      limit: 500
      join_fields:
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      stars_locations.student_pop: Students
      stars_locations.location_type: Type
      stars_locations.school_level: Level
      stars_locations.grade_range: Grade Range
      budget_expenditures_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_line.projected_amt: Revenue
    series_column_widths:
      stars_locations.location_type: 134
      stars_locations.school_level: 158
      stars_locations.grade_range: 99
      stars_locations.school_size: 96
    series_cell_visualizations:
      stars_locations.student_pop:
        is_active: false
      budget_expenditures_line.budget_amount:
        is_active: false
      actuals_line.amount:
        is_active: false
    series_text_format:
      budget_expenditures_line.budget_amount:
        fg_color: "#F15922"
      actuals_line.amount:
        fg_color: "#068993"
      budget_line.projected_amt:
        fg_color: "#9B2030"
      actuals_revenue_line.amount:
        fg_color: "#9B8E20"
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    type: looker_grid
    series_types: {}
    column_limit: 50
    listen:
    - 'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    - 'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    - 'District:': stars_locations.district_name
      Fiscal Year: stars_locations.location_year
      District Type: stars_districts.district_type
    row: 55
    col: 0
    width: 24
    height: 6
  - title: Actual Expenditures by Object and Fund Category
    name: Actual Expenditures by Object and Fund Category
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_object_hierarchy.object_group, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: "-Charter School"
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 30
    col: 7
    width: 17
    height: 8
  - title: Untitled
    name: Untitled
    model: ped_public_financials_test
    explore: stars_locations
    type: single_value
    fields: [stars_districts.charter_student_pop]
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
    single_value_title: Local Charter Students
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: stars_districts.location_year
      District Type: stars_districts.district_type
    row: 7
    col: 21
    width: 3
    height: 4
  - title: Actual Revenue to Date
    name: Actual Revenue to Date
    model: ped_public_financials_test
    explore: actuals_revenue_line
    type: single_value
    fields: [actuals_revenue_line.amount]
    filters:
      stars_locations.location_type: "-Charter School"
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
    custom_color: "#9B8E20"
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 3
    col: 0
    width: 5
    height: 2
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials_test
    explore: actuals_revenue_line
    type: looker_bar
    fields: [actuals_revenue_line.amount, coa_fund_hierarchy.fund_group]
    filters:
      stars_locations.location_type: "-Charter School"
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
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_revenue_line.amount: "#9B8E20"
      percent_of_total: "#9B2030"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 20
    col: 0
    width: 12
    height: 10
  - name: Overview
    type: text
    title_text: Overview
    subtitle_text: ''
    body_text: "District financial numbers on this page do not include local charter\
      \ school numbers - those are available in the school list at the bottom of the\
      \ dashboard or on the school dashboard page. Please note that capital funds\
      \ and debt service funds are not included in these totals. \n\nThe latest fiscal\
      \ year data shows only the approved quarterly data - it will not show the full\
      \ year of data until all four quarters have been submitted and approved. Data\
      \ will be updated throughout the year as it is approved in the Operating Budget\
      \ Management System."
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Avg Spending per District Student to Date
    name: Avg Spending per District Student to Date
    model: ped_public_financials_test
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount, stars_districts.public_student_pop]
    filters:
      stars_locations.location_type: "-Charter School"
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: avg_spending_per_student, label: Avg Spending
          Per Student, expression: "${actuals_line.amount}/${stars_districts.public_student_pop}",
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
    hidden_fields: [actuals_line.amount, stars_districts.public_student_pop]
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 7
    col: 0
    width: 5
    height: 2
  - title: Avg Instructional Spending per District Student to Date
    name: Avg Instructional Spending per District Student to Date
    model: ped_public_financials_test
    explore: actuals_line
    type: single_value
    fields: [actuals_line.amount, stars_districts.public_student_pop]
    filters:
      stars_locations.location_type: "-Charter School"
      coa_function_hierarchy.rollup_function_name: Instruction
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: avg_spending_per_student, label: Avg Spending
          Per Student, expression: "${actuals_line.amount}/${stars_districts.public_student_pop}",
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
    hidden_fields: [actuals_line.amount, stars_districts.public_student_pop]
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 9
    col: 0
    width: 5
    height: 2
  - title: Actual Expenditures by Function for Special Ed, At-Risk and Bilingual Programs
    name: Actual Expenditures by Function for Special Ed, At-Risk and Bilingual Programs
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_program_hierarchy.program_name, coa_function_hierarchy.rollup_function_name]
    pivots: [coa_function_hierarchy.rollup_function_name]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,Bilingual
        Education Programs,At-Risk Special Ed Programs,K-5 Plus Programs,Extended
        Learning Time Programs,Special Ed Programs
      stars_locations.location_type: "-Charter School"
    sorts: [actuals_line.amount desc 2, coa_function_hierarchy.rollup_function_name]
    limit: 500
    row_total: right
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Instruction - actuals_line.amount,
            id: Instruction - actuals_line.amount, name: Instruction}, {axisId: Support
              Services - actuals_line.amount, id: Support Services - actuals_line.amount,
            name: Support Services}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Instruction - actuals_line.amount: "#068993"
      Support Services - actuals_line.amount: "#A8876C"
    defaults_version: 1
    listen:
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 46
    col: 0
    width: 24
    height: 7
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_object_hierarchy.object_group]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [actuals_line.amount desc]
    limit: 500
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 30
    col: 0
    width: 7
    height: 8
  - title: Actual Expenditures by Job for Salary/Compensation
    name: Actual Expenditures by Job for Salary/Compensation
    model: ped_public_financials_test
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_job_class.job_rollup_name]
    filters:
      stars_locations.location_type: "-Charter School"
      coa_job_class.job_rollup_name: "-None"
    sorts: [actuals_line.amount desc]
    limit: 500
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
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Food Services - actuals_line.amount: "#A85573"
      General Fund - actuals_line.amount: "#A8876C"
    series_labels:
      actuals_line.amount: Spends
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
            id: actuals_line.amount, name: Spends}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    label_value_format: ''
    series_types: {}
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
      'District:': stars_locations.district_name
      Fiscal Year: budget_year.year_name
      District Type: stars_districts.district_type
    row: 38
    col: 0
    width: 7
    height: 8
  filters:
  - name: District Type
    title: District Type
    type: field_filter
    default_value: State District
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_group
      display: inline
      options:
      - State District
    model: ped_public_financials_test
    explore: stars_locations
    listens_to_filters: []
    field: stars_districts.district_type
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
    model: ped_public_financials_test
    explore: actuals_revenue_line
    listens_to_filters: []
    field: budget_year.year_name
  - name: 'District:'
    title: 'District:'
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: ped_public_financials_test
    explore: stars_locations
    listens_to_filters: [District Type]
    field: stars_locations.district_name
