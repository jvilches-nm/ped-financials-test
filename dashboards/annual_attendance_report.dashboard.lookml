- dashboard: annual_attendance_report
  title: Annual Attendance Report DEV
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jDToUxR9VcH89OnGQN91jB
  elements:
  - title: Subpopulation Attendance Data
    name: Subpopulation Attendance Data
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_grid
    fields: [annual_attendance.sub_pop_item, annual_attendance.enroll_number, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [annual_attendance.sub_pop_item]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -1, ${annual_attendance.enroll_number})', label: Enrollment, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: enrollment,
        _type_hint: number}, {category: table_calculation, expression: 'if (${annual_attendance.enroll_number}<20,-1,
          ${annual_attendance.tier1_absent_student})', label: Tier 1 Students, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: tier_1_students,
        _type_hint: number}, {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -1, ${annual_attendance.tier2_absent_student})', label: Tier 2 Students,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: tier_2_students, _type_hint: number}, {category: table_calculation,
        expression: "if(${annual_attendance.enroll_number}<20, -1, \n  ${annual_attendance.tier3_absent_student})",
        label: Tier 3 Students, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: tier_3_students, _type_hint: number},
      {category: table_calculation, expression: "if(${annual_attendance.enroll_number}<20,\
          \ -1, \n  ${annual_attendance.tier4_absent_student})", label: Tier 4 Students,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: tier_4_students, _type_hint: number}, {category: table_calculation,
        expression: 'if(${annual_attendance.enroll_number}<20, -0.01, ${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number})',
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
      chronic_absentee_rate:
        is_active: false
        palette:
          palette_id: 364b5000-be28-40e9-a495-81343e4830d5
          collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
    conditional_formatting: [{type: greater than, value: 0.05, background_color: '',
        font_color: "#F15922", color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: [chronic_absentee_rate]}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.enroll_number, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student]
    note_state: collapsed
    note_display: hover
    note_text: If the total enrollments are less than 20, the value is displayed as
      -1.
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 78
    col: 0
    width: 23
    height: 11
  - title: Chronic Absentee Rate - School
    name: Chronic Absentee Rate - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item_code: F,M
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: District Chronic Absentee Rate All Students, value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, table_calculation: district_chronic_absentee_rate_all_students,
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
    custom_color: "#068993"
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.enroll_number]
    series_types: {}
    defaults_version: 1
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 4
    col: 4
    width: 4
    height: 4
  - title: School Enrollment
    name: School Enrollment
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item_code: F,M
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
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    note_state: collapsed
    note_display: hover
    note_text: If no specific school is selected, the school level statistics will
      reflect all the schools in the district selected, or all schools statewide if
      no district is selected.
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 4
    col: 0
    width: 4
    height: 4
  - title: Number of Students by Tiers - School
    name: Number of Students by Tiers - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item: Female,Male
    limit: 5000
    column_limit: 1
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
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.tier1_absent_student,
            id: annual_attendance.tier1_absent_student, name: Tier 1 Students}, {
            axisId: annual_attendance.tier2_absent_student, id: annual_attendance.tier2_absent_student,
            name: Tier 2 Students}, {axisId: annual_attendance.tier3_absent_student,
            id: annual_attendance.tier3_absent_student, name: Tier 3 Students}, {
            axisId: annual_attendance.tier4_absent_student, id: annual_attendance.tier4_absent_student,
            name: Tier 4 Students}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '12'
    series_types: {}
    series_colors:
      annual_attendance.tier4_absent_student: "#cef2f2"
      tier_4_student: "#cef2f2"
      tier_4_students: "#cef2f2"
    series_labels:
      annual_attendance.tier1_absent_student: Tier 1 Students
      annual_attendance.tier2_absent_student: Tier 2 Students
      annual_attendance.tier3_absent_student: Tier 3 Students
      annual_attendance.tier4_absent_student: Tier 4 Students
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: false
    series_cell_visualizations:
      annual_attendance.tier1_absentee:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: [annual_attendance.enroll_number]
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 22
    col: 0
    width: 8
    height: 8
  - title: Student % by Tiers - District
    name: Student % by Tiers - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_donut_multiples
    fields: [annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item: Female,Male
    sorts: [annual_attendance.tier1_absent_student desc]
    limit: 5000
    dynamic_fields: [{table_calculation: percent_of_student_in_tier_1, label: 'Percent
          of Student in Tier 1 ', expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_2, label: Percent
          of Student in Tier 2, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_3, label: Percent
          of Student in Tier 3, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_4, label: Percent
          of Student in Tier 4, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: students_not_in_tiers, label: Students
          not in tiers, expression: "${annual_attendance.enroll_number}-${annual_attendance.tier1_absent_student}-${annual_attendance.tier2_absent_student}-${annual_attendance.tier3_absent_student}-${annual_attendance.tier4_absent_student}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    show_value_labels: true
    font_size: 12
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
      options:
        steps: 5
        reverse: true
    series_colors:
      percent_of_student_in_tier_4: "#ffe6b4"
      annual_attendance.tier4_absent_student: "#fff3df"
      students_not_in_tiers: "#ffe0d4"
      total_tier_4_students: "#ffdfc6"
      total_tier_3_students: "#ebcab0"
    series_labels:
      percent_of_student_in_tier_1: Percent of Student in Tier 1
      percent_of_student_in_tier_2: Percent of Student in Tier 2
      percent_of_student_in_tier_3: Percent of Student in Tier 3
      percent_of_student_in_tier_4: Percent of Student in Tier 4
      annual_attendance.tier1_absent_student: "% Tier 1 Students"
      annual_attendance.tier2_absent_student: "% Tier 2 Students"
      annual_attendance.tier4_absent_student: "% Tier 4 Students"
      annual_attendance.tier3_absent_student: "% Tier 3 Students"
      total_tier_1_students: "% Tier 1 Students"
      total_tier_2_students: "% Tier 2 Students"
      total_tier_3_students: "% Tier 3 Students"
      total_tier_4_students: "% Tier 4 Students"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_student_in_tier_1,
            id: percent_of_student_in_tier_1, name: Percent of Student in Tier 1},
          {axisId: percent_of_student_in_tier_2, id: percent_of_student_in_tier_2,
            name: Percent of Student in Tier 2}, {axisId: percent_of_student_in_tier_3,
            id: percent_of_student_in_tier_3, name: Percent of Student in Tier 3},
          {axisId: percent_of_student_in_tier_4, id: percent_of_student_in_tier_4,
            name: Percent of Student in Tier 4}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
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
      annual_attendance.tier1_absentee:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.enroll_number, percent_of_student_in_tier_1,
      percent_of_student_in_tier_2, percent_of_student_in_tier_3, percent_of_student_in_tier_4,
      students_not_in_tiers]
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 22
    col: 13
    width: 5
    height: 8
  - title: Avg Excused Absences per Student - School
    name: Avg Excused Absences per Student - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.total_days_excused_absence, annual_attendance.enroll_number]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences per Student, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences_per_student,
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
    custom_color: "#068993"
    hidden_fields: [annual_attendance.total_days_excused_absence, annual_attendance.enroll_number]
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
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 4
    col: 8
    width: 5
    height: 4
  - title: Avg Unexcused Absences per Student - School
    name: Avg Unexcused Absences per Student - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.enroll_number, annual_attendance.total_days_unexcused_absence]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences per Student, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences_per_student,
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
    custom_color: "#068993"
    hidden_fields: [annual_attendance.enroll_number, annual_attendance.total_days_unexcused_absence]
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
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 4
    col: 13
    width: 5
    height: 4
  - title: Student Enrollment by Population - School
    name: Student Enrollment by Population - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [annual_attendance.enroll_number desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -1, ${annual_attendance.enroll_number})', label: Masked Enrollment, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: masked_enrollment,
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      masked_enrollment: "#068993"
    series_labels:
      masked_enrollment: Enrollment
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, chronic_absentee_rate, average_excused_absences,
      average_unexcused_absences, annual_attendance.enroll_number]
    note_state: collapsed
    note_display: hover
    note_text: If the total enrollments are less than 20, the total Enrollment value
      is displayed as -1.
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 34
    col: 0
    width: 11
    height: 7
  - title: Chronic Absentee Rate - School
    name: Chronic Absentee Rate - School (2)
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [chronic_absentee_rate desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number})',
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      chronic_absentee_rate: "#068993"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, average_excused_absences, average_unexcused_absences,
      annual_attendance.enroll_number, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student]
    note_state: collapsed
    note_display: hover
    note_text: If the total enrollments are less than 20, the Chronic Absentee Rate
      is displayed as -1.00%.
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 41
    col: 0
    width: 11
    height: 7
  - title: Students by Tier - School
    name: Students by Tier - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [annual_attendance.enroll_number desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number},
      {category: table_calculation, expression: 'if (${annual_attendance.enroll_number}<20,-1,
          ${annual_attendance.tier1_absent_student})', label: Tier 1 Students, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: tier_1_students,
        _type_hint: number}, {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -1, ${annual_attendance.tier2_absent_student})', label: Tier 2 Students,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: tier_2_students, _type_hint: number}, {category: table_calculation,
        expression: "if(${annual_attendance.enroll_number}<20, -1, \n  ${annual_attendance.tier3_absent_student})",
        label: Tier 3 Students, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: tier_3_students, _type_hint: number},
      {category: table_calculation, expression: "if(${annual_attendance.enroll_number}<20,\
          \ -1, \n  ${annual_attendance.tier4_absent_student})", label: Tier 4 Students,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: tier_4_students, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      annual_attendance.tier4_absent_student: "#d0faf1"
      tier_1_students: "#068993"
      tier_4_students: "#e1ffef"
    series_labels:
      annual_attendance.tier2_absent_student: Tier 2 Students
      annual_attendance.tier1_absent_student: Tier 1 Students
      annual_attendance.tier3_absent_student: Tier 3 Students
      annual_attendance.tier4_absent_student: Tier 4 Students
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, average_excused_absences, average_unexcused_absences,
      annual_attendance.enroll_number, chronic_absentee_rate, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student]
    note_state: collapsed
    note_display: hover
    note_text: If the total enrollments are less than 20, the total number of student
      in each tier is displayed as -1.
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 48
    col: 0
    width: 11
    height: 8
  - title: Student % in Tiers by Population - School
    name: Student % in Tiers by Population - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.sub_pop_item, annual_attendance.enroll_number, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [percent_of_student_in_tier_1 desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number})',
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      percent_of_student_in_tier_1: "#068993"
      percent_of_student_in_tier_2: "#09b1bd"
      percent_of_student_in_tier_4: "#9dede7"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      average_excused_absences, average_unexcused_absences, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student]
    note_state: collapsed
    note_display: hover
    note_text: If the total enrollments are less than 20, the percent of student in
      each tier is displayed as -1.00%.
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 56
    col: 0
    width: 11
    height: 8
  - title: Average Unexcused Absences - School
    name: Average Unexcused Absences - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [average_unexcused_absences desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: " ${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      average_excused_absences: "#9B8E20"
      average_unexcused_absences: "#068993"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, chronic_absentee_rate, annual_attendance.enroll_number,
      average_excused_absences]
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 71
    col: 0
    width: 11
    height: 7
  - title: Average Excused Absences - School
    name: Average Excused Absences - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [average_excused_absences desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: " ${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      average_excused_absences: "#068993"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, chronic_absentee_rate, annual_attendance.enroll_number,
      average_unexcused_absences]
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 64
    col: 0
    width: 11
    height: 7
  - title: Avg Excused Absences per Student - State
    name: Avg Excused Absences per Student - State
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.total_days_excused_absence, annual_attendance.enroll_number]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences per Student, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences_per_student,
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
    custom_color: "#A85573"
    hidden_fields: [annual_attendance.total_days_excused_absence, annual_attendance.enroll_number]
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
      School Year: annual_attendance.school_year
    row: 16
    col: 10
    width: 6
    height: 3
  - title: Chronic Absentee Rate All Students - State
    name: Chronic Absentee Rate All Students - State
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item_code: F,M
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: District Chronic Absentee Rate All Students, value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, table_calculation: district_chronic_absentee_rate_all_students,
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
    custom_color: "#A85573"
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.enroll_number]
    series_types: {}
    defaults_version: 1
    listen:
      School Year: annual_attendance.school_year
    row: 16
    col: 5
    width: 5
    height: 3
  - title: Avg Unexcused Absences per Student - State
    name: Avg Unexcused Absences per Student - State
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.enroll_number, annual_attendance.total_days_unexcused_absence]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences per Student, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences_per_student,
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
    custom_color: "#A85573"
    hidden_fields: [annual_attendance.enroll_number, annual_attendance.total_days_unexcused_absence]
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
      School Year: annual_attendance.school_year
    row: 16
    col: 16
    width: 7
    height: 3
  - title: Statewide Enrollment
    name: Statewide Enrollment
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item_code: F,M
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
    custom_color: "#A85573"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      School Year: annual_attendance.school_year
    row: 16
    col: 0
    width: 5
    height: 3
  - title: Avg Excused Absences per Student - District
    name: Avg Excused Absences per Student - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.total_days_excused_absence, annual_attendance.enroll_number]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences per Student, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences_per_student,
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
    custom_color: "#F15922"
    hidden_fields: [annual_attendance.total_days_excused_absence, annual_attendance.enroll_number]
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
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 10
    col: 8
    width: 5
    height: 4
  - title: Chronic Absentee Rate - District
    name: Chronic Absentee Rate - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item_code: F,M
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: District Chronic Absentee Rate All Students, value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, table_calculation: district_chronic_absentee_rate_all_students,
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
    custom_color: "#F15922"
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.enroll_number]
    series_types: {}
    defaults_version: 1
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 10
    col: 4
    width: 4
    height: 4
  - title: District Enrollment
    name: District Enrollment
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item_code: F,M
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
    custom_color: "#F15922"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    note_state: collapsed
    note_display: hover
    note_text: If no specific district is selected, the district level statistics
      will reflect the statewide statistics.
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 10
    col: 0
    width: 4
    height: 4
  - title: Avg Unexcused Absences per Student - District
    name: Avg Unexcused Absences per Student - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.enroll_number, annual_attendance.total_days_unexcused_absence]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences per Student, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences_per_student,
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
    custom_color: "#F15922"
    hidden_fields: [annual_attendance.enroll_number, annual_attendance.total_days_unexcused_absence]
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
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 10
    col: 13
    width: 5
    height: 4
  - title: Student % by Tiers - State
    name: Student % by Tiers - State
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_donut_multiples
    fields: [annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item: Female,Male
    sorts: [annual_attendance.tier1_absent_student desc]
    limit: 500
    dynamic_fields: [{table_calculation: percent_of_student_in_tier_1, label: 'Percent
          of Student in Tier 1 ', expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_2, label: Percent
          of Student in Tier 2, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_3, label: Percent
          of Student in Tier 3, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_4, label: Percent
          of Student in Tier 4, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: students_not_in_tiers, label: Students
          not in tiers, expression: "${annual_attendance.enroll_number}-${annual_attendance.tier1_absent_student}-${annual_attendance.tier2_absent_student}-${annual_attendance.tier3_absent_student}-${annual_attendance.tier4_absent_student}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    show_value_labels: true
    font_size: 12
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: de0bdb92-9455-489c-afa7-f0e0fdc76078
      options:
        steps: 5
        reverse: false
    series_colors:
      percent_of_student_in_tier_1: "#9B8E20"
      percent_of_student_in_tier_2: "#baaa21"
      percent_of_student_in_tier_3: "#e8d52d"
      percent_of_student_in_tier_4: "#f7e330"
      annual_attendance.tier1_absent_student: "#b55875"
      annual_attendance.tier2_absent_student: "#b57789"
      annual_attendance.tier3_absent_student: "#e37a90"
      annual_attendance.tier4_absent_student: "#fca4ba"
      students_not_in_tiers: "#ffc4da"
      total_tier_1_student: "#A85573"
      total_tier_2_student: "#c45e7a"
      total_tier_3_student: "#e37a90"
      total_tier_4_student: "#ffc4da"
    series_labels:
      percent_of_student_in_tier_2: Percent of Student in Tier 2
      percent_of_student_in_tier_3: Percent of Student in Tier 3
      percent_of_student_in_tier_4: Percent of Student in Tier 4
      annual_attendance.tier1_absent_student: "% Tier 1 Students"
      annual_attendance.tier2_absent_student: "% Tier 2 Students"
      annual_attendance.tier3_absent_student: "% Tier 3 Students"
      annual_attendance.tier4_absent_student: "% Tier 4 Students"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_student_in_tier_1,
            id: percent_of_student_in_tier_1, name: Percent of Student in Tier 1},
          {axisId: percent_of_student_in_tier_2, id: percent_of_student_in_tier_2,
            name: Percent of Student in Tier 2}, {axisId: percent_of_student_in_tier_3,
            id: percent_of_student_in_tier_3, name: Percent of Student in Tier 3},
          {axisId: percent_of_student_in_tier_4, id: percent_of_student_in_tier_4,
            name: Percent of Student in Tier 4}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
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
      annual_attendance.tier1_absentee:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.enroll_number, percent_of_student_in_tier_1,
      percent_of_student_in_tier_2, percent_of_student_in_tier_3, percent_of_student_in_tier_4,
      students_not_in_tiers]
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen:
      School Year: annual_attendance.school_year
    row: 22
    col: 18
    width: 5
    height: 8
  - title: Student Enrollment by Population - District
    name: Student Enrollment by Population - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [annual_attendance.enroll_number desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -1, ${annual_attendance.enroll_number})', label: Masked Enrollment, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: masked_enrollment,
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#E87F2F"
      masked_enrollment: "#E87F2F"
    series_labels:
      masked_enrollment: Enrollment
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, chronic_absentee_rate, average_excused_absences,
      average_unexcused_absences, annual_attendance.enroll_number]
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 34
    col: 12
    width: 11
    height: 7
  - title: Chronic Absentee Rate - District
    name: Chronic Absentee Rate - District (2)
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [chronic_absentee_rate desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -0.01, ${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number})',
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      chronic_absentee_rate: "#E87F2F"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, average_excused_absences, average_unexcused_absences,
      annual_attendance.enroll_number, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student]
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 41
    col: 12
    width: 11
    height: 7
  - title: Students by Tier - District
    name: Students by Tier - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [annual_attendance.enroll_number desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number},
      {category: table_calculation, expression: 'if (${annual_attendance.enroll_number}<20,-1,
          ${annual_attendance.tier1_absent_student})', label: Tier 1 Students, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: tier_1_students,
        _type_hint: number}, {category: table_calculation, expression: 'if(${annual_attendance.enroll_number}<20,
          -1, ${annual_attendance.tier2_absent_student})', label: Tier 2 Students,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: tier_2_students, _type_hint: number}, {category: table_calculation,
        expression: "if(${annual_attendance.enroll_number}<20, -1, \n  ${annual_attendance.tier3_absent_student})",
        label: Tier 3 Students, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: tier_3_students, _type_hint: number},
      {category: table_calculation, expression: "if(${annual_attendance.enroll_number}<20,\
          \ -1, \n  ${annual_attendance.tier4_absent_student})", label: New Calculation,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: new_calculation, _type_hint: number}]
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
      palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      annual_attendance.tier4_absent_student: "#fcefce"
      new_calculation: "#ffefd2"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, average_excused_absences, average_unexcused_absences,
      annual_attendance.enroll_number, chronic_absentee_rate, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student]
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 48
    col: 12
    width: 11
    height: 8
  - title: 'Average Unexcused Absences - District '
    name: 'Average Unexcused Absences - District '
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [average_unexcused_absences desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      average_excused_absences: "#9B8E20"
      average_unexcused_absences: "#E87F2F"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, chronic_absentee_rate, annual_attendance.enroll_number,
      average_excused_absences]
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 71
    col: 12
    width: 11
    height: 7
  - title: Average Excused Absences - District
    name: Average Excused Absences - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [average_excused_absences desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      average_excused_absences: "#E87F2F"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, chronic_absentee_rate, annual_attendance.enroll_number,
      average_unexcused_absences]
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 64
    col: 12
    width: 11
    height: 7
  - title: Student % in Tiers by Population - District
    name: Student % in Tiers by Population - District
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_bar
    fields: [annual_attendance.enroll_number, annual_attendance.sub_pop_item, annual_attendance.tier1_absent_student,
      annual_attendance.tier2_absent_student, annual_attendance.tier3_absent_student,
      annual_attendance.tier4_absent_student, annual_attendance.Chronically_Absent_Student,
      annual_attendance.total_days_excused_absence, annual_attendance.total_days_enrolled,
      annual_attendance.total_days_unexcused_absence]
    sorts: [percent_of_student_in_tier_1 desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 1, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_1, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 2, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_2, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 3, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_3, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        label: Percent of Student in Tier 4, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: percent_of_student_in_tier_4, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.Chronically_Absent_Student}/${annual_attendance.enroll_number}",
        label: Chronic Absentee Rate, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: chronic_absentee_rate, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_excused_absence}/${annual_attendance.enroll_number}",
        label: Average Excused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_excused_absences, _type_hint: number},
      {category: table_calculation, expression: "${annual_attendance.total_days_unexcused_absence}/${annual_attendance.enroll_number}",
        label: Average Unexcused Absences, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: average_unexcused_absences, _type_hint: number}]
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
      palette_id: 9bba0279-71a4-410a-bd57-3afc0dfabaad
      options:
        steps: 5
        reverse: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: annual_attendance.enroll_number,
            id: annual_attendance.enroll_number, name: Enrollment}], showLabels: false,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types: {}
    series_colors:
      annual_attendance.enroll_number: "#068993"
      percent_of_student_in_tier_4: "#fff0e7"
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
    column_order: ["$$$_row_numbers_$$$", annual_attendance.sub_pop_item, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      percent_tier_1, percent_tier_2, percent_tier_3, percent_tier_4, annual_attendance.avg_days_excused_absence,
      annual_attendance.avg_days_unexcused_absence]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      annual_attendance.enroll_number:
        is_active: false
    defaults_version: 1
    hidden_fields: [annual_attendance.Chronically_Absent_Student, annual_attendance.total_days_excused_absence,
      annual_attendance.total_days_enrolled, annual_attendance.total_days_unexcused_absence,
      average_excused_absences, average_unexcused_absences, annual_attendance.enroll_number,
      chronic_absentee_rate, annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student]
    listen:
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 56
    col: 12
    width: 11
    height: 8
  - title: School Filter
    name: School Filter
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.school_name_filter]
    sorts: [annual_attendance.school_name_filter]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#068993"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      annual_attendance.school_name_filter: School Name
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 2
    col: 0
    width: 23
    height: 2
  - title: District Filter
    name: District Filter
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.district_name_filter]
    sorts: [annual_attendance.district_name_filter]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#068993"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      annual_attendance.school_name_filter: School Name
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 8
    col: 0
    width: 23
    height: 2
  - name: Students by Population
    type: text
    title_text: Students by Population
    body_text: ''
    row: 30
    col: 0
    width: 24
    height: 2
  - title: School Filter (Copy)
    name: School Filter (Copy)
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.school_name_filter]
    sorts: [annual_attendance.school_name_filter]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#068993"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      annual_attendance.school_name_filter: School Name
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 32
    col: 0
    width: 11
    height: 2
  - name: Students by Tier
    type: text
    title_text: Students by Tier
    subtitle_text: ''
    body_text: |
      * Tier 1:  Students who have missed less than 5% of classes for any reason.
      * Tier 2: Students who are missing 5% or more but less than 10% of classes or school days for any reason.
      * Tier 3: Students who are considered chronically absent and missing 10% or more but less than 20% of classes or school days for any reason.
      * Tier 4: Students who are considered excessively absent and missing 20% or more of classes or school days for any reason.
    row: 19
    col: 0
    width: 23
    height: 3
  - name: ''
    type: text
    title_text: ''
    body_text: "#<center>Statewide"
    row: 14
    col: 0
    width: 23
    height: 2
  - title: District Filter (Copy)
    name: District Filter (Copy)
    model: ped_public_financials_dev
    explore: annual_attendance
    type: single_value
    fields: [annual_attendance.district_name_filter]
    sorts: [annual_attendance.district_name_filter]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#068993"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#F15922",
        font_color: !!null '', color_application: {collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09,
          palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      annual_attendance.school_name_filter: School Name
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 32
    col: 12
    width: 11
    height: 2
  - title: AIP Submitted
    name: AIP Submitted
    model: ped_public_financials_dev
    explore: aip_submissions
    type: looker_pie
    fields: [aip_submissions.count, aip_submissions.certified_calculation]
    filters:
      aip_submissions.school_code: 'NULL'
      aip_submissions.district_code: "<500"
    sorts: [aip_submissions.count desc]
    limit: 500
    value_labels: labels
    label_type: labVal
    series_colors:
      'Yes': "#3F6173"
      'No': "#9B2030"
      Not Required-85: "#068993"
      Not Required: "#F15922"
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
    note_state: collapsed
    note_display: below
    note_text: AIP - Attendance Improvement Plan
    hidden_fields: []
    listen:
      " District Name": aip_submissions.district_name
      School Year: aip_submissions.yeardesc
    row: 10
    col: 18
    width: 5
    height: 4
  - title: AIP Submitted
    name: AIP Submitted (2)
    model: ped_public_financials_dev
    explore: aip_submissions
    type: looker_pie
    fields: [aip_submissions.count, aip_submissions.certified_calculation]
    filters:
      aip_submissions.school_code: NOT NULL
    sorts: [aip_submissions.count desc]
    limit: 500
    value_labels: labels
    label_type: labVal
    series_colors:
      'Yes': "#3F6173"
      'No': "#9B2030"
      Not Required: "#F15922"
    series_labels: {}
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
    hidden_fields: []
    hidden_points_if_no: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
    note_state: collapsed
    note_display: below
    note_text: AIP - Attendance Improvement Plan
    listen:
      " School Name": aip_submissions.school_name
      " District Name": aip_submissions.district_name
      School Year: aip_submissions.yeardesc
    row: 4
    col: 18
    width: 5
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: 'Enrollment numbers will not likely reflect end of year enrollment
      as a student may appear multiple times at schools within a district or may be
      counted at multiple districts. Each time a student is enrolled at a different
      school for more than 10 days the student will count toward that school’s chronic
      absenteeism rate, regardless of where the student is enrolled at the end of
      the year.  '
    row: 0
    col: 0
    width: 23
    height: 2
  - title: Student % by Tiers - School
    name: Student % by Tiers - School
    model: ped_public_financials_dev
    explore: annual_attendance
    type: looker_donut_multiples
    fields: [annual_attendance.tier1_absent_student, annual_attendance.tier2_absent_student,
      annual_attendance.tier3_absent_student, annual_attendance.tier4_absent_student,
      annual_attendance.enroll_number]
    filters:
      annual_attendance.sub_pop_item: Female,Male
    sorts: [annual_attendance.tier1_absent_student desc]
    limit: 5000
    dynamic_fields: [{table_calculation: percent_of_student_in_tier_1, label: 'Percent
          of Student in Tier 1 ', expression: "${annual_attendance.tier1_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_2, label: Percent
          of Student in Tier 2, expression: "${annual_attendance.tier2_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_3, label: Percent
          of Student in Tier 3, expression: "${annual_attendance.tier3_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_student_in_tier_4, label: Percent
          of Student in Tier 4, expression: "${annual_attendance.tier4_absent_student}/${annual_attendance.enroll_number}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    show_value_labels: true
    font_size: 12
    hide_legend: false
    color_application:
      collection_id: 7c79334a-9912-4ca1-be6a-35756782ae09
      palette_id: acab4a0c-9dd2-48ac-85f3-c7f40364f778
      options:
        steps: 5
        reverse: true
    series_colors:
      annual_attendance.tier4_absent_student: "#cff2e6"
      students_not_in_tiers: "#e8fff9"
      total_tier_1_student: "#3F6173"
      total_tier_4_students: "#b2e3de"
    series_labels:
      percent_of_student_in_tier_1: Percent of Student in Tier 1
      percent_of_student_in_tier_2: Percent of Student in Tier 2
      percent_of_student_in_tier_3: Percent of Student in Tier 3
      percent_of_student_in_tier_4: Percent of Student in Tier 4
      annual_attendance.tier1_absent_student: "% Tier 1 Students"
      annual_attendance.tier2_absent_student: "% Tier 2 Students"
      annual_attendance.tier3_absent_student: "% Tier 3 Students"
      annual_attendance.tier4_absent_student: "% Tier 4 Students"
      total_tier_1_student: "% Tier 1 Students"
      total_tier_2_students: "% Tier 2 Students"
      total_tier_3_students: "% Tier 3 Students"
      total_tier_4_students: "% Tier 4 Students"
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_student_in_tier_1,
            id: percent_of_student_in_tier_1, name: Percent of Student in Tier 1},
          {axisId: percent_of_student_in_tier_2, id: percent_of_student_in_tier_2,
            name: Percent of Student in Tier 2}, {axisId: percent_of_student_in_tier_3,
            id: percent_of_student_in_tier_3, name: Percent of Student in Tier 3},
          {axisId: percent_of_student_in_tier_4, id: percent_of_student_in_tier_4,
            name: Percent of Student in Tier 4}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    show_dropoff: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
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
      annual_attendance.tier1_absentee:
        is_active: false
    defaults_version: 1
    hidden_fields: [percent_of_student_in_tier_1, percent_of_student_in_tier_2, percent_of_student_in_tier_3,
      percent_of_student_in_tier_4, annual_attendance.enroll_number]
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen:
      " School Name": annual_attendance.school_name
      " District Name": annual_attendance.district_name
      School Year: annual_attendance.school_year
    row: 22
    col: 8
    width: 5
    height: 8
  filters:
  - name: School Year
    title: School Year
    type: field_filter
    default_value: 2021-2022
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
    model: ped_public_financials_dev
    explore: annual_attendance
    listens_to_filters: []
    field: annual_attendance.school_year
  - name: " District Name"
    title: " District Name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: ped_public_financials_dev
    explore: annual_attendance
    listens_to_filters: [" School Name"]
    field: annual_attendance.district_name
  - name: " School Name"
    title: " School Name"
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: ped_public_financials_dev
    explore: annual_attendance
    listens_to_filters: [" District Name"]
    field: annual_attendance.school_name
