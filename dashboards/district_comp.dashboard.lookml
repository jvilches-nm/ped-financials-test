- dashboard: district_comp
  title: District Comparison DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Eh89t7OcbY2S2fxiHzzQRp
  elements:
  - title: Actual Expenditures by Object Category for General Funds
    name: Actual Expenditures by Object Category for General Funds
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, coa_object_hierarchy.object_group, stars_districts.district_name]
    pivots: [coa_object_hierarchy.object_group]
    filters:
      coa_fund_hierarchy.fund_group: General Fund
    sorts: [coa_object_hierarchy.object_group, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 15
    charts_across: 4
    hide_legend: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Benefits - actuals_line.amount,
            id: Benefits - actuals_line.amount, name: Benefits}, {axisId: Debt Service
              - actuals_line.amount, id: Debt Service - actuals_line.amount, name: Debt
              Service}, {axisId: Other Services - actuals_line.amount, id: Other Services
              - actuals_line.amount, name: Other Services}, {axisId: Prof/Tech Services
              - actuals_line.amount, id: Prof/Tech Services - actuals_line.amount,
            name: Prof/Tech Services}, {axisId: Property - actuals_line.amount, id: Property
              - actuals_line.amount, name: Property}, {axisId: Property Services -
              actuals_line.amount, id: Property Services - actuals_line.amount, name: Property
              Services}, {axisId: Salary - actuals_line.amount, id: Salary - actuals_line.amount,
            name: Salary}, {axisId: Supplies - actuals_line.amount, id: Supplies -
              actuals_line.amount, name: Supplies}], showLabels: false, showValues: true,
        valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 69
    col: 0
    width: 24
    height: 9
  - title: Students by Grade
    name: Students by Grade
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.pk_pop, stars_locations.kf_pop, stars_locations.g1_pop,
      stars_locations.g2_pop, stars_locations.g3_pop, stars_locations.g4_pop, stars_locations.g5_pop,
      stars_locations.g6_pop, stars_locations.g7_pop, stars_locations.g8_pop, stars_locations.g9_pop,
      stars_locations.g10_pop, stars_locations.g11_pop, stars_locations.g12_pop, stars_districts.district_name]
    sorts: [stars_districts.district_name]
    limit: 4
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
      palette_id: 5b289dc9-1446-49e6-ab05-ba239a94b7a9
      options:
        steps: 5
    x_axis_label: District
    series_types: {}
    series_labels:
      stars_locations.pk_pop: PreK
      stars_locations.kf_pop: K
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
    defaults_version: 1
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 31
    col: 11
    width: 13
    height: 10
  - name: Actual Revenue and Expenditures to Date
    title: Actual Revenue and Expenditures to Date
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, stars_districts.district_name]
      sorts: [stars_districts.district_name]
      limit: 4
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.district_name, stars_districts.count]
      sorts: [stars_districts.district_name]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: state_avg_district_spending_without_abq,
          label: State Avg District Spending without ABQ, expression: "sum(case(when(${stars_districts.district_name}=\"\
            ALBUQUERQUE\", 0.0), ${actuals_line.amount}))\n/sum(case (when (${stars_districts.district_name}=\"\
            ALBUQUERQUE\", 0), ${stars_districts.count}))", value_format: !!null '',
          value_format_name: usd_0, _kind_hint: measure, _type_hint: number}, {table_calculation: state_avg_district_spending_with_abq,
          label: State Avg District Spending with ABQ, expression: 'sum(${actuals_line.amount})/sum(${stars_districts.count})',
          value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.district_name]
      filters:
        stars_districts.district_name: "-NULL"
      sorts: [stars_districts.district_name]
      limit: 4
      column_limit: 50
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: budget_expenditures_line.budget_amount,
            id: budget_expenditures_line.budget_amount, name: Budget}, {axisId: actuals_line.amount,
            id: actuals_line.amount, name: Spending}, {axisId: budget_line.projected_amt,
            id: budget_line.projected_amt, name: Revenue}], showLabels: true, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types:
      state_avg_district_spending_without_abq: line
      state_avg_district_spending_with_abq: line
    point_style: none
    series_colors:
      state_avg_district_spending_with_abq: "#000000"
      state_avg_district_spending_without_abq: "#989c94"
      budget_line.projected_amt: "#A85573"
      actuals_line.amount: "#068993"
      budget_expenditures_line.budget_amount: "#F15922"
      actuals_revenue_line.amount: "#9B8E20"
    series_labels:
      budget_expenditures_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_line.projected_amt: Revenue
      state_avg_district_spending_without_abq: State Avg District Expenditures without
        ABQ
      state_avg_district_spending_with_abq: State Avg District Expenditures with ABQ
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
    hidden_fields: [stars_districts.count, q3_actuals_line.amount, q2_actuals_line.amount,
      state_avg_district_spending_with_abq, state_avg_district_spending_without_abq]
    sorts: [stars_districts.district_name]
    column_limit: 50
    listen:
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 4
    col: 0
    width: 11
    height: 9
  - title: Students by District
    name: Students by District
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_column
    fields: [stars_districts.district_name, stars_districts.public_student_pop]
    sorts: [stars_districts.district_name]
    limit: 4
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
    color_application: undefined
    y_axes: [{label: '', orientation: left, series: [{axisId: stars_districts.public_student_pop,
            id: stars_districts.public_student_pop, name: District Students}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      stars_districts.public_student_pop: "#068993"
    series_labels:
      stars_districts.public_student_pop: District Students
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      stars_districts.total_student_pop:
        is_active: true
        palette:
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      stars_districts.public_student_pop:
        is_active: true
        palette:
          palette_id: 691bf3c8-df8a-5697-83a8-de6ab9457fca
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
          custom_colors:
          - "#f7f7f7"
          - "#7DC1C7"
          - "#068993"
    defaults_version: 1
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 31
    col: 0
    width: 11
    height: 10
  - title: Students by Level
    name: Students by Level
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_donut_multiples
    fields: [stars_locations.student_pop, stars_locations.school_level, stars_districts.district_name]
    pivots: [stars_locations.school_level]
    filters:
      stars_locations.location_type: "-Central Office"
    sorts: [stars_locations.school_level, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 12
    charts_across: 4
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
    series_colors: {}
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
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 24
    col: 11
    width: 13
    height: 7
  - title: Schools by Level
    name: Schools by Level
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_column
    fields: [stars_locations.school_level, stars_locations.school_count, stars_districts.district_name]
    pivots: [stars_locations.school_level]
    filters:
      stars_locations.location_type: District School,Offsite,Charter School
    sorts: [stars_locations.school_level, stars_districts.district_name]
    limit: 4
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
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
    y_axes: [{label: Schools, orientation: left, series: [{axisId: Elementary School
              - stars_locations.schhol_count, id: Elementary School - stars_locations.schhol_count,
            name: Elementary School}, {axisId: High School - stars_locations.schhol_count,
            id: High School - stars_locations.schhol_count, name: High School}, {
            axisId: Junior High - stars_locations.schhol_count, id: Junior High -
              stars_locations.schhol_count, name: Junior High}, {axisId: Middle School
              - stars_locations.schhol_count, id: Middle School - stars_locations.schhol_count,
            name: Middle School}, {axisId: Prekindergarten - stars_locations.schhol_count,
            id: Prekindergarten - stars_locations.schhol_count, name: Prekindergarten},
          {axisId: Special Education - stars_locations.schhol_count, id: Special Education
              - stars_locations.schhol_count, name: Special Education}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: District
    font_size: '12'
    series_types: {}
    series_colors: {}
    charts_across: 4
    defaults_version: 1
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 24
    col: 0
    width: 11
    height: 7
  - title: Actual Expenditures by Fund Category
    name: Actual Expenditures by Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_fund_hierarchy.fund_group]
    pivots: [coa_fund_hierarchy.fund_group]
    sorts: [coa_fund_hierarchy.fund_group, stars_districts.district_name]
    limit: 4
    column_limit: 50
    show_value_labels: true
    font_size: 15
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors:
      State and Local Grants - actuals_line.amount: "#F2C73C"
      General Fund - actuals_line.amount: "#A8876C"
      Other - actuals_line.amount: "#9B2030"
      Federal Grants - actuals_line.amount: "#068993"
      Food Services - actuals_line.amount: "#F15922"
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
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 52
    col: 0
    width: 24
    height: 9
  - title: Actual Salary/Compensation Expenditures by Job Category for General Funds
    name: Actual Salary/Compensation Expenditures by Job Category for General Funds
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_job_class.job_rollup_name]
    pivots: [coa_job_class.job_rollup_name]
    filters:
      coa_job_class.job_rollup_name: "-None"
      coa_fund_hierarchy.fund_group: General Fund
    sorts: [coa_job_class.job_rollup_name, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 14
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Administrators - actuals_line.amount,
            id: Administrators - actuals_line.amount, name: Administrators}, {axisId: Instructional
              Assistants - actuals_line.amount, id: Instructional Assistants - actuals_line.amount,
            name: Instructional Assistants}, {axisId: Other - actuals_line.amount,
            id: Other - actuals_line.amount, name: Other}, {axisId: Other Professionals
              - actuals_line.amount, id: Other Professionals - actuals_line.amount,
            name: Other Professionals}, {axisId: Support - actuals_line.amount, id: Support
              - actuals_line.amount, name: Support}, {axisId: Teachers - actuals_line.amount,
            id: Teachers - actuals_line.amount, name: Teachers}], showLabels: true,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 78
    col: 0
    width: 24
    height: 9
  - name: Students/Schools
    type: text
    title_text: Students/Schools
    body_text: ''
    row: 22
    col: 0
    width: 24
    height: 2
  - name: District Schools
    title: District Schools
    merged_queries:
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [stars_districts.district_name]
      sorts: [stars_districts.district_name]
      limit: 4
      dynamic_fields: [{table_calculation: row, label: row, expression: row(), value_format: !!null '',
          value_format_name: !!null '', _kind_hint: dimension, _type_hint: number}]
      join_fields: []
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [stars_locations.map_location, stars_districts.district_name, stars_locations.School_name,
        stars_locations.school_size_col, stars_locations.student_pop]
      filters:
        stars_locations.location_type: District School,Charter School
      sorts: [stars_districts.district_name, stars_locations.student_pop desc]
      limit: 500
      column_limit: 4
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
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
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_radius_fixed: 5
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    map_value_colors: ["#F15922", "#A85573", "#068993", "#D9C202"]
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    hidden_fields: [stars_locations.student_pop]
    type: looker_map
    column_limit: 50
    listen:
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 4
    col: 11
    width: 13
    height: 12
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    body_text: ''
    row: 41
    col: 0
    width: 24
    height: 2
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: looker_donut_multiples
    fields: [coa_fund_hierarchy.fund_group, stars_districts.district_name, actuals_revenue_line.amount]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      stars_districts.district_name: "-NULL"
    sorts: [coa_fund_hierarchy.fund_group, stars_districts.district_name]
    limit: 4
    show_value_labels: true
    font_size: 15
    charts_across: 4
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 3f395a8d-960f-4480-a725-63521163b8b8
      options:
        steps: 5
        reverse: false
    series_colors:
      Debt Service - actuals_revenue_line.amount: "#F15922"
      Federal Grants - actuals_revenue_line.amount: "#068993"
      Food Services - actuals_revenue_line.amount: "#F15922"
      General Fund - actuals_revenue_line.amount: "#A8876C"
      State and Local Grants - actuals_revenue_line.amount: "#F2C73C"
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
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 43
    col: 0
    width: 24
    height: 9
  - name: Avg Spending per Student to Date
    title: Avg Spending per Student to Date
    note_state: collapsed
    note_display: hover
    note_text: Total district expenditures, and total Instruction function expenditures,
      to date for the selected school year not including capital or debt service funds
      divided by the number of district students based on the 40-day count for that
      school year. This average should be considered an estimate for comparison purposes
      and not an actual tally of the spending per student.
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.district_name, stars_districts.total_student_pop]
      filters:
        stars_districts.district_name: "-NULL"
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [stars_districts.district_name]
      limit: 4
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
          label: Avg total spend, value_format: !!null '', value_format_name: usd_0,
          _kind_hint: measure, table_calculation: avg_total_spend, _type_hint: number}]
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.district_name, stars_districts.total_student_pop]
      filters:
        coa_function_hierarchy.rollup_function_name: Instruction & Support
        stars_districts.district_name: "-NULL"
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [stars_districts.district_name]
      limit: 4
      column_limit: 50
      dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
          label: Avg instructional spend, value_format: !!null '', value_format_name: usd_0,
          _kind_hint: measure, table_calculation: avg_instructional_spend, _type_hint: number}]
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.total_student_pop, stars_districts.district_name]
      filters:
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [actuals_line.amount desc]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: state_avg_spend_per_student, label: State
            Avg Spend per Student, expression: 'sum(${actuals_line.amount})/sum(${stars_districts.total_student_pop})',
          value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, stars_districts.total_student_pop, stars_districts.district_name]
      filters:
        coa_function_hierarchy.rollup_function_name: Instruction & Support
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [actuals_line.amount desc]
      limit: 500
      column_limit: 50
      dynamic_fields: [{table_calculation: state_avg_instructional_spending_per_student,
          label: State Avg Instructional Spending per Student, expression: 'sum(${actuals_line.amount})/sum(${stars_districts.total_student_pop})',
          value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
          _type_hint: number}]
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: avg_total_spend, id: avg_total_spend,
            name: Avg Spending per Studnet}, {axisId: avg_instructional_spend, id: avg_instructional_spend,
            name: Avg Instructional Spending per Student}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_types:
      state_avg_spend_per_student: line
      state_avg_instructional_spending_per_student: line
    point_style: none
    series_colors:
      avg_total_spend: "#068993"
      avg_instructional_spend: "#A8876C"
      state_avg_instructional_spending_per_student: "#F15922"
    series_labels:
      avg_total_spend: Avg Spending per Student
      avg_instructional_spend: Avg Instructional Spending per Student
      state_avg_spend_per_student: State Avg Spending per Student
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [actuals_line.amount, q1_stars_locations.student_pop, q1_actuals_line.amount,
      q1_stars_districts.public_student_pop, q2_actuals_line.amount, stars_districts.total_student_pop,
      q3_stars_districts.total_student_pop, q3_actuals_line.amount, q1_stars_districts.total_student_pop,
      q2_stars_districts.total_student_pop]
    type: looker_column
    column_limit: 50
    listen:
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    - District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 16
    col: 0
    width: 24
    height: 6
  - title: Actual Expenditures for Special Ed, At-Risk and Bilingual Programs
    name: Actual Expenditures for Special Ed, At-Risk and Bilingual Programs
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, stars_districts.district_name, coa_program_hierarchy.program_name]
    pivots: [coa_program_hierarchy.program_name]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,Bilingual
        Education Programs,At-Risk Special Ed Programs,Extended Learning Time Programs,K-5
        Plus Programs,Special Ed Programs
    sorts: [stars_districts.district_name, coa_program_hierarchy.program_name]
    limit: 4
    show_value_labels: true
    font_size: 15
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors:
      State and Local Grants - actuals_line.amount: "#F2C73C"
      General Fund - actuals_line.amount: "#A8876C"
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
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.District_Custom_Map
    row: 87
    col: 0
    width: 24
    height: 9
  - title: Financial Approval Status
    name: Financial Approval Status
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_grid
    fields: [actuals_budget_period.reporting_period_code, stars_districts.district_name]
    sorts: [stars_districts.district_name]
    limit: 4
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
    column_order: ["$$$_row_numbers_$$$", stars_districts.district_name, actuals_budget_period.reporting_period_code]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      actuals_budget_period.reporting_period_code: Financial Approval Status
      stars_districts.district_name: District
    series_text_format:
      actuals_budget_period.reporting_period_code: {}
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
    title_hidden: true
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.district_name
    row: 13
    col: 0
    width: 11
    height: 3
  - title: Actual Expenditures by Function Category
    name: Actual Expenditures by Function Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_donut_multiples
    fields: [actuals_line.amount, coa_function_hierarchy.rollup_function_name, stars_districts.district_name]
    pivots: [coa_function_hierarchy.rollup_function_name]
    sorts: [coa_function_hierarchy.rollup_function_name, stars_districts.district_name]
    limit: 4
    column_limit: 50
    show_value_labels: true
    font_size: 13
    charts_across: 4
    hide_legend: false
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
    label_value_format: ''
    series_types: {}
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
    hidden_pivots: {}
    listen:
      District Type: stars_districts.district_type
      Fiscal Year: budget_year.year_name
      'Select up to 4 districts:': stars_districts.district_name
    row: 61
    col: 0
    width: 24
    height: 8
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"District Comparison Overview"}],"align":"center"},{"type":"h3","align":"left","children":[{"text":"Overview
      of district education finances in comparison - includes all district and local
      charter students, all district and local charter schools. To learn more about
      the data displayed or to find definitions of terms please click "},{"type":"a","url":"https://openbooks.ped.nm.gov/learn-more/","children":[{"text":"here"}],"id":1686247788899},{"text":"."}],"id":1686251562647},{"type":"h3","children":[{"text":"\nBudgeted
      amounts cover the entire school year. Year-to-date actual revenue and expenditure
      amounts are updated throughout the year as they are submitted and approved in
      the Operating Budget Management System. Starting with the 2022-2023 school year,
      acutal expenditure amounts will be available for individual district schools.
      "}],"id":1686251562647},{"type":"p","children":[{"text":"\n\n"}],"id":1686251562647}]'
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
      type: button_toggles
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
  - name: 'Select up to 4 districts:'
    title: 'Select up to 4 districts:'
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: [District Type]
    field: stars_locations.district_name
