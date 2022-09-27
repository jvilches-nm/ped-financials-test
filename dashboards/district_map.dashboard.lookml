- dashboard: district_map
  title: District Map NEW TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qch8oK7Hb1lvqiUYmcZFn3
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Districts
    name: Districts
    model: ped_public_financials_dev
    explore: stars_locations
    type: looker_grid
    fields: [stars_districts.District_Custom_Map]
    filters:
      stars_districts.district_type: State District
    sorts: [stars_districts.District_Custom_Map]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '18'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      stars_districts.District_Custom_Map: Districts
    series_text_format:
      stars_districts.District_Custom_Map:
        align: left
        fg_color: "#000000"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#f4f4ff"
    header_background_color: "#F15922"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: c80fe9b3-6c8e-48c6-891b-c9107bae6f6d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      Fiscal Year: stars_districts.location_year
    row: 0
    col: 18
    width: 6
    height: 15
  - title: District Map
    name: District Map
    model: ped_public_financials_dev
    explore: actuals_line
    type: looker_map
    fields: [stars_districts.District_Custom_Map, actuals_line.amount, stars_districts.total_student_pop]
    filters:
      budget_year.year_name: ''
      stars_districts.district_name: "-NULL"
      stars_districts.district_type: State District
    sorts: [avg_spending_per_student desc]
    limit: 500
    dynamic_fields: [{table_calculation: avg_spending_per_student, label: Avg Spending
          per Student, expression: "${actuals_line.amount}/${stars_districts.total_student_pop}",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: traffic_day
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 34.27016350693672
    map_longitude: -106.09944596886636
    map_zoom: 7
    map_value_colors: ["#E87F2F", "#068993"]
    map_value_scale_clamp_min: 5000
    map_value_scale_clamp_max: 25000
    defaults_version: 1
    hidden_fields: [actuals_line.amount, stars_districts.total_student_pop]
    listen:
      Fiscal Year: stars_locations.location_year
    row: 0
    col: 0
    width: 18
    height: 15
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
    model: ped_public_financials_dev
    explore: stars_locations
    listens_to_filters: []
    field: stars_locations.location_year
