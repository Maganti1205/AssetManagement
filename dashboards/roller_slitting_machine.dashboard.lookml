- dashboard: roller_slitting_machine
  title: Roller Slitting Machine
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5uCyhcPBQVqFv3jM1GkWKN
  elements:
  - title: Machine Overview
    name: Machine Overview
    model: asset-magagement
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
    filter_expression: ${oee.equipment} = "Roller Slitting Machine"
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
      quality: "#EA4335"
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
    fields: [material_name, cycle, action, ideal_rul, predicted_rul]
    sorts: [material_name]
    limit: 500
    dynamic_fields: [{category: dimension, expression: '"Large-Safety-valve-19"',
        label: Material Name, value_format: !!null '', value_format_name: !!null '',
        dimension: material_name, _kind_hint: dimension, _type_hint: string, id: rGw2AhYvE3},
      {category: dimension, expression: '89', label: Cycle, value_format: !!null '',
        value_format_name: !!null '', dimension: cycle, _kind_hint: dimension, _type_hint: number,
        id: bC1ehk2zGO}, {category: dimension, expression: '82', label: Ideal RUL,
        value_format: !!null '', value_format_name: !!null '', dimension: ideal_rul,
        _kind_hint: dimension, _type_hint: number, id: avoUsjxz0C}, {category: dimension,
        expression: '"Replace the component ASAP"', label: Action, value_format: !!null '',
        value_format_name: !!null '', dimension: action, _kind_hint: dimension, _type_hint: string,
        id: SSlyclTCCn}, {category: dimension, expression: '8', label: Predicted RUL,
        value_format: !!null '', value_format_name: !!null '', dimension: predicted_rul,
        _kind_hint: dimension, _type_hint: number, id: QJE2NeEXJI}]
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
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", material_name, cycle, ideal_rul, predicted_rul,
      action]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      predicted_rul: 146
      ideal_rul: 144
      cycle: 181
    series_text_format:
      material_name:
        align: center
      cycle:
        align: center
      action:
        align: center
        bg_color: "#EA4335"
      predicted_rul:
        bg_color: "#EA4335"
        align: center
      ideal_rul:
        align: center
    listen: {}
    row: 2
    col: 9
    width: 14
    height: 5
  - title: Temperature Trends for defective components
    name: Temperature Trends for defective components
    model: asset-management
    explore: RUL
    type: looker_line
    fields: [RUL.temperature, RUL.cycle]
    sorts: [RUL.temperature]
    limit: 500
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_types: {}
    series_colors:
      RUL.temperature: "#FBBC04"
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '70'}, {reference_type: line, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", line_value: '79'}]
    defaults_version: 1
    row: 7
    col: 0
    width: 11
    height: 6
  - title: Pressure Trends for defective components
    name: Pressure Trends for defective components
    model: asset-management
    explore: RUL
    type: looker_line
    fields: [RUL.pressure, RUL.cycle]
    sorts: [RUL.pressure]
    limit: 500
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_types: {}
    series_colors:
      RUL.pressure: "#FBBC04"
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '180'}, {reference_type: line, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", line_value: '145'}]
    defaults_version: 1
    row: 7
    col: 12
    width: 11
    height: 6
  - title: Predicted RUL for defective Component
    name: Predicted RUL for defective Component
    model: asset-management
    explore: RUL
    type: looker_line
    fields: [RUL.predicted_rul, RUL.cycle]
    sorts: [RUL.predicted_rul]
    limit: 500
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_types: {}
    series_colors:
      RUL.predicted_rul: "#EA4335"
    defaults_version: 1
    row: 13
    col: 0
    width: 23
    height: 6
  - title: Inventory Details
    name: Inventory Details
    model: asset-management
    explore: Material
    type: looker_grid
    fields: [Material.createdon_, Material.material, Material.updatedon, action, predicted_rul,
      Material.quantity]
    sorts: [Material.material desc]
    limit: 500
    dynamic_fields: [{category: dimension, expression: '8', label: Predicted RUL,
        value_format: !!null '', value_format_name: !!null '', dimension: predicted_rul,
        _kind_hint: dimension, _type_hint: number, id: hAE3okfHO4}, {category: dimension,
        expression: '"Critical RUL AND Inventory running low."', label: Action, value_format: !!null '',
        value_format_name: !!null '', dimension: action, _kind_hint: dimension, _type_hint: string,
        id: G4vfF21yuf}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", Material.material, Material.quantity, Material.createdon_,
      Material.updatedon, predicted_rul, action]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      Material.quantity:
        is_active: false
        value_display: false
    series_text_format:
      predicted_rul:
        bg_color: "#EA4335"
        bold: true
        align: center
      action:
        bg_color: "#EA4335"
        bold: true
        align: center
      Material.quantity:
        bg_color: "#FBBC04"
        align: center
      Material.createdon_:
        align: center
      Material.material:
        align: center
      Material.updatedon:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: []}]
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 19
    col: 0
    width: 23
    height: 3
  - type: button
    name: button_12028
    rich_content_json: '{"text":"Order Management","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"www.amazon.com"}'
    row: 22
    col: 10
    width: 3
    height: 1
