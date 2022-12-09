- dashboard: district_tribal_consultation
  title: District Tribal Consultation
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IhIumdZB4yZQfpGiL12reG
  elements:
  - title: Affirmation Topics
    name: Affirmation Topics
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: table
    fields: [budget_year.year_name, tribal_consultation.affirmation_topics]
    filters:
      stars_locations.School_name_plain: EMPTY
    sorts: [budget_year.year_name]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [budget_year.year_name]
    listen:
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 20
    col: 0
    width: 24
    height: 6
  - title: Coordinator
    name: Coordinator
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.coordinator_name, tribal_consultation.coordinator_role,
      tribal_consultation.coordinator_email, tribal_consultation.coordinator_phone]
    filters:
      stars_locations.School_name_plain: EMPTY
    sorts: [tribal_consultation.coordinator_name]
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
    truncate_header: false
    series_labels:
      tribal_consultation.tribal_name: Name
      tribal_consultation.tribal_role: Role
      tribal_consultation.tribal_email: Email
      tribal_consultation.tribal_phone: Phone
      tribal_consultation.coordinator_name: Name
      tribal_consultation.coordinator_role: Role
      tribal_consultation.coordinator_email: Email
      tribal_consultation.coordinator_phone: Phone
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
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 7
    col: 0
    width: 24
    height: 3
  - title: Superintendent
    name: Superintendent
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.superintendent, tribal_consultation.superintendent_email,
      tribal_consultation.superintendent_phone]
    filters:
      stars_locations.School_name_plain: EMPTY
    sorts: [tribal_consultation.superintendent]
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
    truncate_header: false
    series_labels:
      tribal_consultation.superintendent: Name
      tribal_consultation.superintendent_email: Email
      tribal_consultation.superintendent_phone: Phone
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
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 4
    col: 0
    width: 24
    height: 3
  - title: Tribal Representative
    name: Tribal Representative
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.tribal_name, tribal_consultation.tribal_role, tribal_consultation.tribal_email,
      tribal_consultation.tribal_phone]
    filters:
      stars_locations.School_name_plain: EMPTY
    sorts: [tribal_consultation.tribal_name]
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
    truncate_header: false
    series_labels:
      tribal_consultation.tribal_name: Name
      tribal_consultation.tribal_role: Role
      tribal_consultation.tribal_email: Email
      tribal_consultation.tribal_phone: Phone
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
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 10
    col: 0
    width: 24
    height: 3
  - title: Consultation Topics
    name: Consultation Topics
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: table
    fields: [budget_year.year_name, stars_districts.district_name, tribal_consultation.consultation_topics]
    filters:
      stars_locations.School_name_plain: EMPTY
    sorts: [budget_year.year_name]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [stars_districts.district_name, budget_year.year_name]
    listen:
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 13
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      The purpose of the Affirmation of Consultation document for Local Education Agencies (LEAs) is to establish a tribal consultation process that enhances the relationship between LEAs and the Tribes, Nations and Pueblos of New Mexico per section 8538 of the new federal ESSA requirements. The affected local educational agencies (LEAs) must consult with Indian tribes, or those tribal organizations approved by the tribes located in the area served by the LEA, prior to submitting a plan or application for covered programs.

      Under section 8538, an affected LEA is one that either: 1) has 50 percent or more of its student enrollment made up of AI/AN students; or 2) received an Indian education formula grant under Title VI of the ESEA, as amended by the ESSA, in the previous fiscal year that exceeds $40,000.

      Please find more information on the Indian Education Bureau <a href="https://webnew.ped.state.nm.us/bureaus/indian-education/tribal-consultation/">Tribal Consultation</a> webpage.
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Narrative
    name: Narrative
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.narrative]
    sorts: [tribal_consultation.narrative]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 26
    col: 0
    width: 24
    height: 5
  - title: Tribal Representative Signature
    name: Tribal Representative Signature
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.signature_printed_tribe, tribal_consultation.signature_date_tribe]
    sorts: [tribal_consultation.signature_date_tribe desc]
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
    truncate_header: false
    series_labels:
      tribal_consultation.signature_date_tribe: Date
      tribal_consultation.signature_printed_tribe: Printed Name
    series_types: {}
    defaults_version: 1
    listen:
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 36
    col: 12
    width: 12
    height: 3
  - title: Superintendent Signature
    name: Superintendent Signature
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.signature_printed_superintendent, tribal_consultation.signature_date_superintendent]
    filters:
      tribal_consultation.signature_printed_superintendent: "-EMPTY"
    sorts: [tribal_consultation.signature_printed_superintendent]
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
    truncate_header: false
    series_labels:
      tribal_consultation.signature_date_superintendent: Date
      tribal_consultation.signature_printed_superintendent: Printed Name
    series_types: {}
    defaults_version: 1
    listen:
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 36
    col: 0
    width: 12
    height: 3
  - title: Contact Efforts
    name: Contact Efforts
    model: ped_public_financials_dev
    explore: tribal_consultation
    type: looker_grid
    fields: [tribal_consultation.response_to_good_faith_efforts, tribal_consultation.attempted_contact_details]
    sorts: [tribal_consultation.response_to_good_faith_efforts]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
    series_column_widths:
      tribal_consultation.response_to_good_faith_efforts: 256.45000000000005
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
      Tribe Name: tribal_consultation.tribe_name
      District Name: stars_districts.district_name
      Fiscal Year: budget_year.year_name
    row: 31
    col: 0
    width: 24
    height: 5
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
      options:
      - 2021-2022
    model: ped_public_financials_dev
    explore: tribal_consultation
    listens_to_filters: []
    field: budget_year.year_name
  - name: District Name
    title: District Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - ALBUQUERQUE
      - AZTEC
      - BERNALILLO
      - BLOOMFIELD
      - CENTRAL CONS.
      - CUBA
      - DULCE
      - ESPANOLA
      - FARMINGTON
      - GALLUP
      - GRANTS
      - JEMEZ MOUNTAIN
      - JEMEZ VALLEY
      - LOS LUNAS
      - MAGDALENA
      - PENASCO
      - POJOAQUE
      - RIO RANCHO
      - RUIDOSO
      - SANTA FE
      - TAOS
      - TULAROSA
      - ZUNI
    model: ped_public_financials_dev
    explore: tribal_consultation
    listens_to_filters: []
    field: stars_districts.district_name
  - name: Tribe Name
    title: Tribe Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: ped_public_financials_dev
    explore: tribal_consultation
    listens_to_filters: [District Name]
    field: tribal_consultation.tribe_name
