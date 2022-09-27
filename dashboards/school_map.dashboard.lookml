- dashboard: school_map
  title: School Map NEW TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Schools
    name: Schools
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_map
    fields: [stars_locations.map_location, stars_locations.School_name, stars_locations.location_type_col,
      stars_locations.school_level_col, stars_locations.school_size_col, stars_locations.location_type_name]
    filters:
      stars_locations.location_type: "-Offsite,-Central Office"
    sorts: [stars_locations.map_location]
    limit: 2000
    dynamic_fields: [{table_calculation: location_color, label: Location Color, expression: 'case(when(${stars_locations.location_type_name}="Local
          Charter School", 2), when(${stars_locations.location_type_name}="State Charter
          School", 3), 1)', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: false
    draw_map_labels_above_data: false
    map_tile_provider: traffic_day
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 35.108674964507586
    map_longitude: -106.48498535156251
    map_zoom: 12
    map_marker_radius_fixed: 4
    map_value_colors: ["#068993", "#F15922", "#D9C202"]
    map_value_scale_clamp_min: 1
    map_value_scale_clamp_max: 3
    defaults_version: 1
    hidden_fields: [stars_locations.location_type_col]
    listen:
      'District:': stars_locations.district_name
      Location Type: stars_locations.location_type_name
      Fiscal Year: stars_locations.location_year
    row: 0
    col: 0
    width: 16
    height: 13
  - title: Schools
    name: Schools (2)
    model: ped_public_financials_test
    explore: stars_locations
    type: looker_grid
    fields: [stars_locations.School_name_plain, stars_locations.location_type_name]
    filters:
      stars_locations.location_type: "-Offsite,-Central Office"
    sorts: [stars_locations.School_name_plain]
    limit: 5000
    dynamic_fields: [{table_calculation: location_type, label: Location Type, expression: 'replace(${stars_locations.location_type_name},
          " School", "")', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: string}]
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
    header_font_size: '16'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    header_font_color: "#faf5ff"
    header_background_color: "#F15922"
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
    series_labels:
      stars_locations.location_type_name: School Type
      location_type: Type
    series_column_widths:
      location_type: 113
      stars_locations.School_name_plain: 325
    hidden_fields: [stars_locations.location_type_name]
    query_fields:
      measures: []
      dimensions:
      - align: left
        can_filter: true
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
        project_name: ped_public_financials_test
        scope: stars_locations
        suggest_dimension: stars_locations.School_name_plain
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_test/files/views%2Fstars_locations.view.lkml?line=146"
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials_test/views/stars_locations.view.lkml
        sql: "${TABLE}.location_name "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 0
      - align: left
        can_filter: true
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
        project_name: ped_public_financials_test
        scope: stars_locations
        suggest_dimension: stars_locations.location_type_name
        suggest_explore: stars_locations
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/ped_public_financials_test/files/views%2Fstars_locations.view.lkml?line=233"
        permanent:
        source_file: views/stars_locations.view.lkml
        source_file_path: ped_public_financials_test/views/stars_locations.view.lkml
        sql: |-
          case when ${district_type}='State District' and ${location_type}='Charter School' then 'Local Charter School'
                        when ${district_type}='State Charter' and ${location_type}='Charter School' then 'State Charter School'
                        else ${location_type} end
        sql_case:
        filters:
      table_calculations:
      - label: Location Type
        name: location_type
        expression: replace(${stars_locations.location_type_name}, " School", "")
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
    title_hidden: true
    listen:
      'District:': stars_locations.district_name
      Location Type: stars_locations.location_type_name
      Fiscal Year: stars_locations.location_year
    row: 0
    col: 16
    width: 8
    height: 13
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
      options: []
    model: ped_public_financials_test
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_year
  - name: Location Type
    title: Location Type
    type: field_filter
    default_value: District School,Local Charter School,State Charter School
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options:
      - District School
      - Local Charter School
      - State Charter School
    model: ped_public_financials_test
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_type_name
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
    listens_to_filters: []
    field: stars_locations.district_name
