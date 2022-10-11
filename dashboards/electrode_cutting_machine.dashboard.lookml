- dashboard: electrode_cutting_machine
  title: Electrode Cutting Machine
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LDFaFHPDIEWszjOc9jz03g
  elements:
  - title: Machine Overview
    name: Machine Overview
    model: asset-management
    explore: oee
    type: looker_bar
    fields: [availability, performance, quality]
    sorts: [availability desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Availability,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.availability,
        _kind_hint: measure, measure: availability, type: sum, _type_hint: number,
        id: JojD6S5RWA}, {category: measure, expression: !!null '', label: Performance,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.performance,
        _kind_hint: measure, measure: performance, type: sum, _type_hint: number,
        id: UjgdYT2rFU}, {category: measure, expression: !!null '', label: Quality,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.quality,
        _kind_hint: measure, measure: quality, type: sum, _type_hint: number, id: gdcBF7ABA8}]
    filter_expression: ${oee.equipment} = "Electrode Cutting Machine"
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
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: availability, id: availability,
            name: Availability}, {axisId: performance, id: performance, name: Performance},
          {axisId: quality, id: quality, name: Quality}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: "#.00%"
    series_types: {}
    series_colors:
      availability: "#34A853"
      performance: "#34A853"
      quality: "#34A853"
    column_spacing_ratio: 0.3
    show_null_points: true
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":""},{"type":"a","url":"https://googlecloud.looker.com/dashboards/1417","children":[{"text":"Factory
      Line Overview"}],"id":1663165287678},{"text":" |    "},{"type":"a","url":"https://googlecloud.looker.com/dashboards/1591","children":[{"text":"
      Electrode Cutting Machine"}],"id":1663166069824},{"text":" |    AD Stcking Machine
      |     Roller Slitting Machine"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 11
    height: 2
  - title: RUL for Latest Cycle
    name: RUL for Latest Cycle
    model: asset-management
    explore: oee
    type: looker_grid
    fields: [oee.availability, oee.equipment, oee.performance, oee.quality]
    sorts: [oee.availability]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    row: 2
    col: 10
    width: 14
    height: 4
