- dashboard: state
  title: State Dashboard DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: dz6dLhnqbink7ZxDSQo2BR
  elements:
  - title: Spending
    name: Spending
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
    single_value_title: Actual Expenditures to Date
    value_format: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 10
    col: 0
    width: 6
    height: 2
  - title: Students by Location Type
    name: Students by Location Type
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_pie
    fields: [stars_locations.student_pop, stars_locations.location_type_name]
    filters:
      stars_locations.location_type: "-Central Office"
    sorts: [stars_locations.student_pop desc, stars_locations.location_type_name]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
    series_colors:
      Charter School - stars_locations.student_pop: "#068993"
      District School - stars_locations.student_pop: "#068993"
      Offsite - stars_locations.student_pop: "#9B8E20"
      stars_locations.student_pop: "#068993"
      District School: "#068993"
      State Charter School: "#E87F2F"
      Local Charter School - stars_locations.student_pop: "#F15922"
      State Charter School - stars_locations.student_pop: "#853955"
      Local Charter School: "#D9C202"
    show_value_labels: true
    font_size: 13
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: stars_locations.student_pop,
            id: Charter School - stars_locations.student_pop, name: Charter School},
          {axisId: stars_locations.student_pop, id: District School - stars_locations.student_pop,
            name: District School}, {axisId: stars_locations.student_pop, id: Offsite
              - stars_locations.student_pop, name: Offsite}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 18
    col: 15
    width: 9
    height: 8
  - title: Students
    name: Students
    model: ped_public_financials_dev
    explore: stars_locations
    type: single_value
    fields: [stars_locations.student_pop]
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
    custom_color: "#000000"
    single_value_title: Students
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 14
    col: 20
    width: 4
    height: 2
  - title: District Schools
    name: District Schools
    model: ped_public_financials_dev
    explore: stars_locations
    type: single_value
    fields: [stars_locations.count]
    filters:
      stars_locations.location_type: District School
    limit: 5000
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: District Schools
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
    hidden_fields: [stars_locations.location_name]
    series_types: {}
    listen:
      Fiscal Year: budget_year.year_name
    row: 6
    col: 20
    width: 4
    height: 2
  - name: Schools/Students
    type: text
    title_text: Schools/Students
    body_text: ''
    row: 16
    col: 0
    width: 24
    height: 2
  - title: State Charters
    name: State Charters
    model: ped_public_financials_dev
    explore: stars_locations
    type: single_value
    fields: [stars_districts.count]
    filters:
      stars_districts.district_type: State Charter
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
    single_value_title: State Charter Schools
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 8
    col: 20
    width: 4
    height: 2
  - title: Local Charters
    name: Local Charters
    model: ped_public_financials_dev
    explore: stars_locations
    type: single_value
    fields: [stars_locations.count]
    filters:
      stars_locations.location_type: Charter School
      stars_districts.district_type: State District
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
    single_value_title: Local Charter Schools
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 10
    col: 20
    width: 4
    height: 2
  - title: State Districts
    name: State Districts
    model: ped_public_financials_dev
    explore: stars_locations
    type: single_value
    fields: [stars_districts.count]
    filters:
      stars_districts.district_type: State District
    limit: 5000
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: State Districts
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
    hidden_fields: []
    series_types: {}
    listen:
      Fiscal Year: budget_year.year_name
    row: 4
    col: 20
    width: 4
    height: 2
  - title: RECs
    name: RECs
    model: ped_public_financials_dev
    explore: budget_line
    type: single_value
    fields: [entity_year.count_distinct_parent]
    filters:
      entity_year.parent_type: Regional Education Cooperative
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
    single_value_title: RECs
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
    row: 12
    col: 20
    width: 4
    height: 2
  - name: Revenue and Expenditures
    type: text
    title_text: Revenue and Expenditures
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 2
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
    y_axes: [{label: '', orientation: left, series: [{axisId: stars_locations.pk_pop,
            id: stars_locations.pk_pop, name: Pre-K}, {axisId: stars_locations.kf_pop,
            id: stars_locations.kf_pop, name: K}, {axisId: stars_locations.g1_pop,
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
    series_colors: {}
    series_labels:
      stars_locations.pk_pop: Pre-K
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
      Fiscal Year: budget_year.year_name
    row: 18
    col: 0
    width: 15
    height: 8
  - name: Districts
    title: Districts
    merged_queries:
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [stars_districts.location_year, stars_districts.district_name, stars_districts.district_size,
        stars_locations.count, stars_districts.total_student_pop]
      filters:
        stars_districts.district_type: State District
        stars_locations.location_type: District School,Charter School
      sorts: [stars_districts.district_name]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [stars_districts.district_name, budget_year.year_name, actuals_line.amount]
      filters:
        stars_districts.district_type: State District
      sorts: [actuals_line.amount desc]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
    - model: ped_public_financials_dev
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, stars_districts.district_name, budget_year.year_name]
      filters:
        stars_districts.district_type: State District
      sorts: [actuals_revenue_line.amount desc]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: stars_districts.district_name
        source_field_name: stars_districts.district_name
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      stars_locations.count: Schools
      stars_districts.total_student_pop: Students
      budget_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_revenue_line.projected_amt: Revenue
      stars_districts.public_student_pop: Students
    series_column_widths:
      stars_districts.district_size: 98
      stars_locations.count: 80
      stars_districts.total_student_pop: 94
      actuals_line.amount: 153
      budget_line.budget_amount: 193
    series_cell_visualizations:
      stars_locations.count:
        is_active: false
      actuals_revenue_line.amount:
        is_active: false
    series_text_format:
      budget_line.budget_amount:
        fg_color: "#F15922"
      actuals_line.amount:
        fg_color: "#068993"
      budget_revenue_line.projected_amt:
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
    hidden_fields: [stars_districts.location_year]
    sorts: [stars_districts.district_name]
    column_limit: 50
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 86
    col: 0
    width: 12
    height: 6
  - name: Charter Schools
    title: Charter Schools
    note_state: collapsed
    note_display: hover
    note_text: Local charter school numbers are also included in their associated
      district.
    merged_queries:
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [stars_districts.location_year, stars_locations.School_name_plain, stars_locations.student_pop,
        stars_locations.location_type_name]
      filters:
        stars_locations.location_type: Charter School
      sorts: [stars_locations.student_pop desc]
      limit: 500
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [budget_year.year_name, actuals_line.amount, stars_locations.School_name_plain]
      filters:
        stars_locations.location_type: Charter School
      sorts: [actuals_line.amount desc]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
      - field_name: stars_locations.School_name_plain
        source_field_name: stars_locations.School_name_plain
    - model: ped_public_financials_dev
      explore: actuals_revenue_line
      type: table
      fields: [actuals_revenue_line.amount, budget_year.year_name, stars_locations.School_name_plain]
      filters:
        stars_locations.location_type: Charter School
      sorts: [actuals_revenue_line.amount desc]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: stars_districts.location_year
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
      stars_locations.count: Schools
      stars_districts.total_student_pop: Students
      budget_line.budget_amount: Budget
      actuals_line.amount: Actual Expenditures
      budget_revenue_line.projected_amt: Revenue
      stars_locations.location_type_name: Charter Type
      stars_locations.student_pop: Students
    series_column_widths:
      stars_districts.district_size: 98
      stars_locations.count: 80
      stars_districts.total_student_pop: 94
      actuals_line.amount: 143
      budget_line.budget_amount: 193
      stars_districts.district_name: 275.3299999999999
      budget_revenue_line.projected_amt: 159
      stars_locations.student_pop: 84
      stars_locations.School_name_plain: 314
      charter: 76
      actuals_revenue_line.amount: 119
    series_cell_visualizations:
      stars_locations.count:
        is_active: false
    series_text_format:
      budget_line.budget_amount:
        fg_color: "#F15922"
      actuals_line.amount:
        fg_color: "#068993"
      budget_revenue_line.projected_amt:
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
    hidden_fields: [stars_districts.location_year, stars_locations.location_type_name]
    hide_totals: false
    hide_row_totals: false
    query_fields:
      measures:
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Stars Locations Student Pop
        label_from_parameter:
        label_short: Student Pop
        map_layer:
        name: stars_locations.student_pop
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format:
        view: stars_locations
        view_label: Stars Locations
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Student Pop
        measure: true
        parameter: false
        primary_key: false
        project_name: ped_public_financials_dev
        scope: stars_locations
        suggest_dimension: stars_locations.student_pop
        suggest_explore: stars_locations
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_dev/files/views%2Fstars_locations.view.lkml?line=309"
        permanent: true
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials_dev/views/stars_locations.view.lkml
        sql: "${TABLE}.student_pop "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: Actual amount spent
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actual Expenditures Actual Expenditures
        label_from_parameter:
        label_short: Actual Expenditures
        map_layer:
        name: actuals_line.amount
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_line
        view_label: Actual Expenditures
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Actual Expenditures
        measure: true
        parameter: false
        primary_key: false
        project_name: ped_public_financials_dev
        scope: actuals_line
        suggest_dimension: actuals_line.amount
        suggest_explore: actuals_line
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_dev/files/views%2Factuals_line.view.lkml?line=10"
        permanent: true
        source_file: views/actuals_line.view.lkml
        source_file_path: ped_public_financials_dev/views/actuals_line.view.lkml
        sql: "${TABLE}.Amount "
        sql_case:
        filters:
        aggregate: true
      - align: right
        can_filter: false
        category: measure
        default_filter_value:
        description: Actual amount received in revenue
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Actual Revenue Actual Revenue
        label_from_parameter:
        label_short: Actual Revenue
        map_layer:
        name: actuals_revenue_line.amount
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: actuals_revenue_line
        view_label: Actual Revenue
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Actual Revenue
        measure: true
        parameter: false
        primary_key: false
        project_name: ped_public_financials_dev
        scope: actuals_revenue_line
        suggest_dimension: actuals_revenue_line.amount
        suggest_explore: actuals_revenue_line
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_dev/files/views%2Factuals_revenue_line.view.lkml?line=10"
        permanent: true
        source_file: views/actuals_revenue_line.view.lkml
        source_file_path: ped_public_financials_dev/views/actuals_revenue_line.view.lkml
        sql: "${TABLE}.Amount "
        sql_case:
        filters:
        aggregate: true
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Stars Districts Location Year
        label_from_parameter:
        label_short: Location Year
        map_layer:
        name: stars_districts.location_year
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: stars_districts
        view_label: Stars Districts
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Location Year
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials_dev
        scope: stars_districts
        suggest_dimension: stars_districts.location_year
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_dev/files/views%2Fstars_districts.view.lkml?line=130"
        permanent: true
        source_file: views/stars_districts.view.lkml
        source_file_path: ped_public_financials_dev/views/stars_districts.view.lkml
        sql: "${TABLE}.location_year "
        sql_case:
        filters:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Stars Locations School Name
        label_from_parameter:
        label_short: School Name
        map_layer:
        name: stars_locations.School_name_plain
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: stars_locations
        view_label: Stars Locations
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: School Name
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials_dev
        scope: stars_locations
        suggest_dimension: stars_locations.School_name_plain
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_dev/files/views%2Fstars_locations.view.lkml?line=146"
        permanent: true
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials_dev/views/stars_locations.view.lkml
        sql: "${TABLE}.location_name "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 0
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Stars Locations Location Type Name
        label_from_parameter:
        label_short: Location Type Name
        map_layer:
        name: stars_locations.location_type_name
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: stars_locations
        view_label: Stars Locations
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Location Type Name
        measure: false
        parameter: false
        primary_key: false
        project_name: ped_public_financials_dev
        scope: stars_locations
        suggest_dimension: stars_locations.location_type_name
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_dev/files/views%2Fstars_locations.view.lkml?line=233"
        permanent: true
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials_dev/views/stars_locations.view.lkml
        sql: |-
          case when ${district_type}='State District' and ${location_type}='Charter School' then 'Local Charter School'
                        when ${district_type}='State Charter' and ${location_type}='Charter School' then 'State Charter School'
                        else ${location_type} end
        sql_case:
        filters:
      table_calculations:
      - label: Charter
        name: charter
        expression: replace(${stars_locations.location_type_name}, " Charter School",
          "")
        can_pivot: false
        sortable: true
        type: string
        align: left
        measure: false
        is_table_calculation: true
        dynamic: true
        value_format:
        pivoted: false
      pivots: []
    sorts: [stars_locations.School_name_plain]
    column_limit: 50
    dynamic_fields: [{table_calculation: charter, label: Charter, expression: 'replace(${stars_locations.location_type_name},
          " Charter School", "")', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 86
    col: 12
    width: 12
    height: 6
  - name: Districts/Charters
    type: text
    title_text: Districts/Charters
    body_text: ''
    row: 84
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
    single_value_title: Actual Revenue to Date
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 6
    col: 0
    width: 6
    height: 2
  - name: Actual Revenue to Expenditures Comparison
    title: Actual Revenue to Expenditures Comparison
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_revenue_line
      type: table
      fields: [budget_year.year_name, actuals_revenue_line.amount]
      filters:
        entity_year.parent_type: Regional Education Cooperative,School District,State
          Charter School
      sorts: [budget_year.year_name]
      limit: 500
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [budget_year.year_name, actuals_line.amount, actuals_line.encumbrance]
      filters:
        entity_year.parent_type: Regional Education Cooperative,School District,State
          Charter School
      sorts: [budget_year.year_name]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}, {axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: bottom,
        series: [{axisId: expenditure_to_revenue_ratio, id: expenditure_to_revenue_ratio,
            name: Percentage Expenditures to Revenue}], showLabels: false, showValues: false,
        valueFormat: '00.0,,"M"', unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
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
    hidden_series: []
    legend_position: center
    series_types:
      expenditure_to_revenue_ratio: scatter
    point_style: circle_outline
    series_colors:
      expenditure_to_revenue_ratio: "#000000"
      actuals_revenue_line.amount: "#9B8E20"
      actuals_line.amount: "#068993"
    series_labels:
      expenditure_to_revenue_ratio: Percentage Expenditures to Revenue
      expenditure_and_encumbrance: Actual & Expected Expenditures
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_bar
    hidden_fields: [expenditure_and_encumbrance, actuals_line.encumbrance]
    sorts: [actuals_revenue_line.amount desc]
    column_limit: 50
    dynamic_fields: [{table_calculation: expenditure_to_revenue_ratio, label: Expenditure
          to Revenue Ratio, expression: "(${actuals_line.amount} )/${actuals_revenue_line.amount}",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: expenditure_and_encumbrance, label: Expenditure
          and Encumbrance, expression: "${actuals_line.amount} + ${actuals_line.encumbrance}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 4
    col: 6
    width: 14
    height: 10
  - title: Actual Expenditures by Fund Category
    name: Actual Expenditures by Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_fund_hierarchy.fund_group, actuals_line.amount]
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
            id: actuals_line.amount, name: Actual Expenditures}, {axisId: percent_of_total,
            id: percent_of_total, name: Percent of Total}], showLabels: false, showValues: true,
        valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      actuals_line.amount: "#068993"
      percent_of_total: "#000000"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 36
    col: 12
    width: 12
    height: 8
  - title: Actual Revenue by Fund Category
    name: Actual Revenue by Fund Category
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    type: looker_bar
    fields: [coa_fund_hierarchy.fund_group, actuals_revenue_line.amount]
    sorts: [coa_fund_hierarchy.fund_group desc]
    limit: 500
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '0.00,, "M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      actuals_revenue_line.amount: "#9B8E20"
      percent_of_total: "#9B2030"
    label_rotation:
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 36
    col: 0
    width: 12
    height: 8
  - title: Actual Expenditures by Object and Fund Category
    name: Actual Expenditures by Object and Fund Category
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_object_hierarchy.object_group, actuals_line.amount, coa_fund_hierarchy.fund_group]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Debt Service - actuals_line.amount,
            id: Debt Service - actuals_line.amount, name: Debt Service}, {axisId: Federal
              Grants - actuals_line.amount, id: Federal Grants - actuals_line.amount,
            name: Federal Grants}, {axisId: Food Services - actuals_line.amount, id: Food
              Services - actuals_line.amount, name: Food Services}, {axisId: General
              Fund - actuals_line.amount, id: General Fund - actuals_line.amount,
            name: General Fund}, {axisId: State and Local Grants - actuals_line.amount,
            id: State and Local Grants - actuals_line.amount, name: State and Local
              Grants}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_types: {}
    series_colors:
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Other - actuals_line.amount: "#9B2030"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 60
    col: 9
    width: 15
    height: 8
  - title: Actual Expenditures by Job and Fund Category for Salary/Compensation
    name: Actual Expenditures by Job and Fund Category for Salary/Compensation
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [coa_job_class.job_rollup_name, coa_fund_hierarchy.fund_group, actuals_line.amount]
    pivots: [coa_fund_hierarchy.fund_group]
    filters:
      coa_job_class.job_rollup_name: "-None"
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Federal Grants - actuals_line.amount,
            id: Federal Grants - actuals_line.amount, name: Federal Grants}, {axisId: Food
              Services - actuals_line.amount, id: Food Services - actuals_line.amount,
            name: Food Services}, {axisId: General Fund - actuals_line.amount, id: General
              Fund - actuals_line.amount, name: General Fund}, {axisId: State and
              Local Grants - actuals_line.amount, id: State and Local Grants - actuals_line.amount,
            name: State and Local Grants}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      Federal Grants - actuals_line.amount: "#F15922"
      Food Services - actuals_line.amount: "#068993"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Other - actuals_line.amount: "#9B2030"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 68
    col: 9
    width: 15
    height: 8
  - title: Actual Expenditures by Object for Special Ed, At-Risk and Bilingual Programs
    name: Actual Expenditures by Object for Special Ed, At-Risk and Bilingual Programs
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_bar
    fields: [actuals_line.amount, coa_program_hierarchy.program_name, coa_object_hierarchy.object_group]
    pivots: [coa_object_hierarchy.object_group]
    filters:
      coa_program_hierarchy.program_name: Alternative and At-Risk Programs,Bilingual
        Education Programs,K-5 Plus Programs,Extended Learning Time Programs,At-Risk
        Special Ed Programs,Special Ed Programs
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Debt Service - actuals_line.amount,
            id: Debt Service - actuals_line.amount, name: Debt Service}, {axisId: Federal
              Grants - actuals_line.amount, id: Federal Grants - actuals_line.amount,
            name: Federal Grants}, {axisId: Food Services - actuals_line.amount, id: Food
              Services - actuals_line.amount, name: Food Services}, {axisId: General
              Fund - actuals_line.amount, id: General Fund - actuals_line.amount,
            name: General Fund}, {axisId: State and Local Grants - actuals_line.amount,
            id: State and Local Grants - actuals_line.amount, name: State and Local
              Grants}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_types: {}
    series_colors:
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
      Instruction - actuals_line.amount: "#068993"
      Support Services - actuals_line.amount: "#D9C202"
      Operation of Non-Instructional Services - actuals_line.amount: "#A85573"
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 76
    col: 0
    width: 24
    height: 8
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
    series_colors:
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Debt Service - actuals_line.amount,
            id: Debt Service - actuals_line.amount, name: Debt Service}, {axisId: Federal
              Grants - actuals_line.amount, id: Federal Grants - actuals_line.amount,
            name: Federal Grants}, {axisId: Food Services - actuals_line.amount, id: Food
              Services - actuals_line.amount, name: Food Services}, {axisId: General
              Fund - actuals_line.amount, id: General Fund - actuals_line.amount,
            name: General Fund}, {axisId: State and Local Grants - actuals_line.amount,
            id: State and Local Grants - actuals_line.amount, name: State and Local
              Grants}], showLabels: false, showValues: true, valueFormat: '0.00,,
          "M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 60
    col: 0
    width: 9
    height: 8
  - title: Actual Expenditures by Job for Salary/Compensation
    name: Actual Expenditures by Job for Salary/Compensation
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_pie
    fields: [coa_job_class.job_rollup_name, actuals_line.amount]
    filters:
      coa_job_class.job_rollup_name: "-None"
    sorts: [actuals_line.amount desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    series_colors:
      Federal Grants - actuals_line.amount: "#068993"
      Food Services - actuals_line.amount: "#A85573"
      General Fund - actuals_line.amount: "#A8876C"
      State and Local Grants - actuals_line.amount: "#F2C73C"
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
      Fiscal Year: budget_year.year_name
    row: 68
    col: 0
    width: 9
    height: 8
  - title: Financial Approval Status
    name: Financial Approval Status
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_grid
    fields: [actuals_budget_period.reporting_period_code, actuals_budget_period.count_entities]
    sorts: [actuals_budget_period.reporting_period_code]
    limit: 500
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
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      actuals_budget_period.reporting_period_code: Period Approved
      actuals_budget_period.count_entities: "# Budget Entities"
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
    hidden_fields: []
    listen:
      Fiscal Year: budget_year.year_name
    row: 12
    col: 0
    width: 6
    height: 4
  - name: Avg Spending Per Student to Date
    title: Avg Spending Per Student to Date
    note_state: collapsed
    note_display: hover
    note_text: Total state expenditures to date for the selected school year not including
      capital or debt service funds divided by the number of district and charter
      students in the state based on the 40-day count for that school year. This average
      should be considered an estimate for comparison purposes and not an actual tally
      of the spending per student.
    merged_queries:
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [actuals_line.amount, budget_year.year_name]
      filters:
        coa_fund_hierarchy.fund_group: "-Capital Outlay,-Debt Service"
      sorts: [actuals_line.amount desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: stars_locations
      type: table
      fields: [stars_districts.total_student_pop, budget_year.year_name]
      sorts: [stars_districts.total_student_pop desc 0]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    hidden_fields: [budget_year.year_name, actuals_line.amount, stars_districts.total_student_pop]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
        label: Avg Spending Per Student, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: avg_spending_per_student, _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 14
    col: 6
    width: 7
    height: 2
  - name: Avg Instructional Spending per Student to Date
    title: Avg Instructional Spending per Student to Date
    note_state: collapsed
    note_display: hover
    note_text: Total state expenditures to date for the selected school year categorized
      with an Instructional function not including capital or debt service funds divided
      by the number of district and charter students in the state based on the 40-day
      count for that school year. This average should be considered an estimate for
      comparison purposes and not an actual tally of the spending per student.
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
      fields: [stars_districts.total_student_pop, budget_year.year_name]
      sorts: [stars_districts.total_student_pop desc 0]
      limit: 500
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    hidden_fields: [budget_year.year_name, actuals_line.amount, stars_districts.total_student_pop]
    type: single_value
    series_types: {}
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
        label: Avg Spending Per Student, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: avg_spending_per_student, _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 14
    col: 13
    width: 7
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
      Fiscal Year: budget_year.year_name
    row: 8
    col: 0
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
      Fiscal Year: budget_year.year_name
    row: 4
    col: 0
    width: 6
    height: 2
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
    label_value_format: ''
    series_types: {}
    series_colors:
      budget_revenue_line.projected_amt: "#A85573"
      percent_of_total: "#59121b"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: Does not include Restricted and Unrestricted Cash.
    listen:
      Fiscal Year: budget_year.year_name
    row: 28
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
    series_colors:
      percent_of_total: "#3F6173"
    x_axis_datetime_label: ''
    defaults_version: 1
    listen:
      Fiscal Year: budget_year.year_name
    row: 28
    col: 12
    width: 12
    height: 8
  - name: Budgeted to Actual Revenue Comparison to Date
    title: Budgeted to Actual Revenue Comparison to Date
    merged_queries:
    - model: ped_public_financials_dev
      explore: budget_revenue_line
      type: table
      fields: [budget_revenue_line.projected_amt, budget_year.year_name]
      filters:
        coa_object_hierarchy_revenue.object_code: "-1%"
      sorts: [budget_revenue_line.projected_amt desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_revenue_line
      type: table
      fields: [budget_year.year_name, actuals_revenue_line.amount]
      sorts: [budget_year.year_name]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_revenue_line.projected_amt,
            id: budget_revenue_line.projected_amt, name: Budgeted Revenue}, {axisId: actuals_revenue_line.amount,
            id: actuals_revenue_line.amount, name: Actual Revenue}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: bottom,
        series: [{axisId: actual_revenue_to_budgeted_revenue, id: actual_revenue_to_budgeted_revenue,
            name: Actual Revenue to Budgeted Revenue}], showLabels: false, showValues: false,
        valueFormat: '00.0,,"M"', unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Revenue
    show_x_axis_ticks: false
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
    series_types:
      actual_revenue_to_budgeted_revenue: scatter
    point_style: circle_outline
    series_colors:
      budget_revenue_line.projected_amt: "#A85573"
      actual_revenue_to_budgeted_revenue: "#403c4c"
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
    type: looker_bar
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${actuals_revenue_line.amount}/${budget_revenue_line.projected_amt}",
        label: Actual Revenue to Budgeted Revenue, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: actual_revenue_to_budgeted_revenue,
        _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 44
    col: 0
    width: 12
    height: 8
  - name: Budgeted to Actual Expenditures Comparison to Date
    title: Budgeted to Actual Expenditures Comparison to Date
    merged_queries:
    - model: ped_public_financials_dev
      explore: budget_line
      type: table
      fields: [budget_line.budget_amount, budget_year.year_name]
      sorts: [budget_line.budget_amount desc 0]
      limit: 500
      column_limit: 50
      join_fields: []
    - model: ped_public_financials_dev
      explore: actuals_line
      type: table
      fields: [budget_year.year_name, actuals_line.amount]
      sorts: [budget_year.year_name]
      limit: 500
      column_limit: 50
      join_fields:
      - field_name: budget_year.year_name
        source_field_name: budget_year.year_name
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: budget_line.budget_amount,
            id: budget_line.budget_amount, name: Budgeted Expenditures}, {axisId: actuals_line.amount,
            id: actuals_line.amount, name: Actual Expenditures}], showLabels: false,
        showValues: true, valueFormat: '00.0,,"M"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: bottom,
        series: [{axisId: actual_expenditures_to_budget_expenditures, id: actual_expenditures_to_budget_expenditures,
            name: Actual Expenditures to Budget Expenditures}], showLabels: false,
        showValues: false, valueFormat: '00.0,,"M"', unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Expenditures
    show_x_axis_ticks: false
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
    series_types:
      actual_expenditures_to_budget_expenditures: scatter
    point_style: circle
    series_colors:
      actuals_line.amount: "#068993"
      budget_line.budget_amount: "#F15922"
      actual_expenditures_to_budget_expenditures: "#333247"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_bar
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${actuals_line.amount}/${budget_line.budget_amount}",
        label: Actual Expenditures to Budget Expenditures, value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, table_calculation: actual_expenditures_to_budget_expenditures,
        _type_hint: number}]
    listen:
    - Fiscal Year: budget_year.year_name
    - Fiscal Year: budget_year.year_name
    row: 44
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
      Fiscal Year: budget_year.year_name
    row: 52
    col: 9
    width: 15
    height: 8
  - title: Actual Expenditures by Function
    name: Actual Expenditures by Function
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
      Fiscal Year: budget_year.year_name
    row: 52
    col: 0
    width: 9
    height: 8
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":"State Overview"}],"align":"center"},{"type":"h3","align":"left","children":[{"text":"Overview
      of state education finances - includes all district and charter students, all
      district and charter schools, and the regional education cooperatives. To learn
      more about the data displayed or to find definitions of terms please click "},{"type":"a","url":"https://openbooks.ped.nm.gov/learn-more/","children":[{"text":"here"}],"id":1686247788899},{"text":"."}],"id":1686247788899},{"type":"h3","children":[{"text":"\nBudgeted
      amounts cover the entire school year. Year-to-date actual revenue and expenditure
      amounts are updated throughout the year as they are submitted and approved in
      the Operating Budget Management System. Starting with the 2022-2023 school year,
      acutal expenditure amounts will be available for individual district schools.
      "}],"id":1686247788900}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 4
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
    model: ped_public_financials_dev
    explore: actuals_revenue_line
    listens_to_filters: []
    field: budget_year.year_name
