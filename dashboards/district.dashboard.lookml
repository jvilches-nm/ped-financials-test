- dashboard: district
  title: District Dashboard DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 7TcWjGeURVyUDZS3QdTs2i
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 10
    col: 0
    width: 5
    height: 2
  - title: Actual Expenditures by Job and Fund Category for Salary/Compensation
    name: Actual Expenditures by Job and Fund Category for Salary/Compensation
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_job_class.job_rollup_name, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
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
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: ''
    series_types: {}
    series_colors:
      Assistants: "#e3e3e3"
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Food Services - actuals_line.amount: "#068993"
      General Fund - actuals_line.amount: "#A8876C"
      Federal Grants - actuals_line.amount: "#F15922"
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 59
    col: 7
    width: 17
    height: 7
  - title: School Types and Levels
    name: School Types and Levels
    model: ped_public_financials_dev
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 4
    col: 12
    width: 12
    height: 6
  - title: Schools
    name: Schools
    model: ped_public_financials_dev
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 4
    col: 5
    width: 7
    height: 8
  - title: District Schools
    name: District Schools
    model: ped_public_financials_dev
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 10
    col: 16
    width: 4
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 33
    col: 12
    width: 12
    height: 10
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    y_axes: [{label: Students, orientation: left, series: [{axisId: stars_locations.pk_pop,
            id: stars_locations.pk_pop, name: PK}, {axisId: stars_locations.kf_pop,
            id: stars_locations.kf_pop, name: KF}, {axisId: stars_locations.g1_pop,
            id: stars_locations.g1_pop, name: G1}, {axisId: stars_locations.g2_pop,
            id: stars_locations.g2_pop, name: G2}, {axisId: stars_locations.g3_pop,
            id: stars_locations.g3_pop, name: G3}, {axisId: stars_locations.g4_pop,
            id: stars_locations.g4_pop, name: G4}, {axisId: stars_locations.g5_pop,
            id: stars_locations.g5_pop, name: G5}, {axisId: stars_locations.g6_pop,
            id: stars_locations.g6_pop, name: G6}, {axisId: stars_locations.g7_pop,
            id: stars_locations.g7_pop, name: G7}, {axisId: stars_locations.g8_pop,
            id: stars_locations.g8_pop, name: G8}, {axisId: stars_locations.g9_pop,
            id: stars_locations.g9_pop, name: G9}, {axisId: stars_locations.g10_pop,
            id: stars_locations.g10_pop, name: G10}, {axisId: stars_locations.g11_pop,
            id: stars_locations.g11_pop, name: G11}, {axisId: stars_locations.g12_pop,
            id: stars_locations.g12_pop, name: G12}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 14
    col: 0
    width: 24
    height: 7
  - title: Local Charters
    name: Local Charters
    model: ped_public_financials_dev
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 10
    col: 20
    width: 4
    height: 2
  - title: Students
    name: Students
    model: ped_public_financials_dev
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 12
    col: 16
    width: 4
    height: 2
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    body_text: ''
    row: 21
    col: 0
    width: 24
    height: 2
  - name: School List
    type: text
    title_text: School List
    body_text: ''
    row: 73
    col: 0
    width: 24
    height: 2
  - name: School List (2)
    title: School List
    title_hidden: true
    merged_queries:
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [stars_locations.School_name_plain, stars_locations.location_type, stars_locations.school_level,
        stars_locations.grade_range, stars_locations.school_size, stars_locations.student_pop]
      filters:
        stars_locations.location_type: "-Offsite"
      sorts: [stars_locations.School_name_plain]
      limit: 500
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_locations.School_name_plain]
      sorts: [actuals_line.amount desc]
      limit: 500
      join_fields:
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    - model: ped_public_financials_dev
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
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 75
    col: 0
    width: 24
    height: 6
  - title: Actual Expenditures by Object and Fund Category
    name: Actual Expenditures by Object and Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_object_hierarchy.object_group, coa_fund_hierarchy.fund_group]
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
    show_null_labels: false
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
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: ''
    series_types:
      percent_of_total_expenditures: scatter
    series_colors:
      Assistants: "#e3e3e3"
      percent_of_total_expenditures: "#000000"
      Debt Service - actuals_line.amount: "#F15922"
      Federal Grants - actuals_line.amount: "#F15922"
      Food Services - actuals_line.amount: "#068993"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Capital Outlay - actuals_line.amount: "#3F6173"
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 51
    col: 6
    width: 18
    height: 8
  - title: Untitled
    name: Untitled
    model: ped_public_financials_dev
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 12
    col: 20
    width: 4
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
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 6
    col: 0
    width: 5
    height: 2
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: looker_bar
    fields: [actuals_revenue_line.amount, coa_fund_hierarchy.fund_group]
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 33
    col: 0
    width: 12
    height: 10
  - title: Actual Expenditures by Object for Special Ed, At-Risk and Bilingual Programs
    name: Actual Expenditures by Object for Special Ed, At-Risk and Bilingual Programs
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_program_hierarchy.program_name, coa_object_hierarchy.object_group]
    pivots: [coa_object_hierarchy.object_group]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,Bilingual
        Education Programs,At-Risk Special Ed Programs,K-5 Plus Programs,Extended
        Learning Time Programs,Special Ed Programs
    sorts: [coa_object_hierarchy.object_group, actuals_line.amount desc 2]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Instruction - actuals_line.amount,
            id: Instruction - actuals_line.amount, name: Instruction}, {axisId: Support
              Services - actuals_line.amount, id: Support Services - actuals_line.amount,
            name: Support Services}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      Instruction - actuals_line.amount: "#068993"
      Support Services - actuals_line.amount: "#D9C202"
      Operation of Non-Instructional Services - actuals_line.amount: "#A85573"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 66
    col: 0
    width: 24
    height: 7
  - title: Actual Expenditures by Object
    name: Actual Expenditures by Object
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_object_hierarchy.object_group]
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 51
    col: 0
    width: 6
    height: 8
  - title: Actual Expenditures by Job for Salary/Compensation
    name: Actual Expenditures by Job for Salary/Compensation
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_pie
    fields: [actuals_line.amount, coa_job_class.job_rollup_name]
    filters:
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 59
    col: 0
    width: 7
    height: 7
  - title: Financial Approval Status
    name: Financial Approval Status
    model: ped_public_financials_dev
    explore: actuals_line
    type: single_value
    fields: [actuals_budget_period.count_entities, actuals_budget_period.reporting_period_code]
    filters:
      stars_locations.location_type: "-Charter School"
    sorts: [actuals_budget_period.count_entities desc]
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
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      actuals_budget_period.count_entities: "# Approved"
      actuals_budget_period.reporting_period_code: Period Approved
    series_cell_visualizations:
      actuals_budget_period.count_entities:
        is_active: false
    series_text_format:
      actuals_budget_period.reporting_period_code:
        align: center
      actuals_budget_period.count_entities:
        align: center
    header_font_color: "#068993"
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
    hidden_fields: [actuals_budget_period.count_entities]
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 12
    col: 0
    width: 5
    height: 2
  - name: Avg Spending per Student to Date
    title: Avg Spending per Student to Date
    note_state: collapsed
    note_display: hover
    note_text: Total district expenditures for the selected school year not including
      capital or debt service funds divided by the number of district students based
      on the 40-day count for that school year. This average should be considered
      an estimate for comparison purposes and not an actual tally of the spending
      per student.
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, budget_year.year_name]
      filters:
        stars_locations.location_type_col: ''
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [actuals_line.amount desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [budget_year.year_name, stars_districts.total_student_pop]
      sorts: [stars_districts.total_student_pop desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    hidden_fields: [budget_year.year_name, actuals_line.amount, stars_districts.total_student_pop]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
        label: Avg Spending Per Student to Date, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: avg_spending_per_student_to_date,
        _type_hint: number}]
    listen:
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 12
    col: 5
    width: 5
    height: 2
  - name: Avg Instructional Spending per Student to Date
    title: Avg Instructional Spending per Student to Date
    note_state: collapsed
    note_display: hover
    note_text: Total district expenditures in the Instructional function for the selected
      school year not including capital or debt service funds divided by the number
      of district students based on the 40-day count for that school year. This average
      should be considered an estimate for comparison purposes and not an actual tally
      of the spending per student.
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, budget_year.year_name]
      filters:
        coa_function_hierarchy.rollup_function_name: Instruction & Support
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [actuals_line.amount desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [budget_year.year_name, stars_districts.total_student_pop]
      sorts: [stars_districts.total_student_pop desc 0]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    hidden_fields: [budget_year.year_name, actuals_line.amount, stars_districts.total_student_pop]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
        label: Avg Spending Per Student to Date, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: avg_spending_per_student_to_date,
        _type_hint: number}]
    listen:
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 12
    col: 10
    width: 6
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
    note_text: Does not include restricted or unrestricted cash balances.
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.district_name
    row: 4
    col: 0
    width: 5
    height: 2
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
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.district_name
    row: 8
    col: 0
    width: 5
    height: 2
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.district_name
    row: 23
    col: 12
    width: 12
    height: 10
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
            id: percent_of_total, name: Percent of Total}], showLabels: true, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      budget_revenue_line.projected_amt: "#A85573"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Does not include restricted or unrestricted cash balances.
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 23
    col: 0
    width: 12
    height: 10
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 43
    col: 0
    width: 6
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
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: ''
    series_types:
      percent_of_total_expenditures: scatter
    series_colors:
      Assistants: "#e3e3e3"
      percent_of_total_expenditures: "#000000"
      Debt Service - actuals_line.amount: "#F15922"
      Federal Grants - actuals_line.amount: "#F15922"
      Food Services - actuals_line.amount: "#068993"
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
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'District:': stars_districts.District_Custom_Map
    row: 43
    col: 6
    width: 18
    height: 8
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"District Overview"}],"align":"center"},{"type":"h3","align":"left","children":[{"text":"Overview
      of district education finances - includes all district and local charter students,
      all district and local charter schools. To learn more about the data displayed
      or to find definitions of terms please click "},{"type":"a","url":"https://openbooks.ped.nm.gov/learn-more/","children":[{"text":"here"}],"id":1686247788899},{"text":"."}],"id":1686251374379},{"type":"h3","children":[{"text":"\nBudgeted
      amounts cover the entire school year. Year-to-date actual revenue and expenditure
      amounts are updated throughout the year as they are submitted and approved in
      the Operating Budget Management System. Starting with the 2022-2023 school year,
      acutal expenditure amounts will be available for individual district schools.
      \n\n"}],"id":1686251374380}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 4
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
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: []
    field: stars_districts.district_type
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
  - name: 'District:'
    title: 'District:'
    type: field_filter
    default_value: ALBUQUERQUE
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: [District Type]
    field: stars_locations.district_name
