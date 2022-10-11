- dashboard: factory_line_view
  title: Factory Line View
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: b3R02v74TvDN8QWoiEf3cW
  elements:
  - title: Assembly Line OverView
    name: Assembly Line OverView
    model: asset-management
    explore: oee
    type: looker_bar
    fields: [quality, performance, availability]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Availability,
        value_format: !!null '', value_format_name: percent_0, based_on: oee.availability,
        _kind_hint: measure, measure: availability, type: average, _type_hint: number,
        id: cdBL3afYIl}, {category: measure, expression: !!null '', label: Quality,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.quality,
        _kind_hint: measure, measure: quality, type: average, _type_hint: number,
        id: qu3gfJGIMa}, {category: measure, expression: !!null '', label: Performance,
        value_format: !!null '', value_format_name: '', based_on: oee.performance,
        _kind_hint: measure, measure: performance, type: average, _type_hint: number,
        id: 5k4X61xxfc}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: quality, id: quality,
            name: Quality}, {axisId: performance, id: performance, name: Performance},
          {axisId: availability, id: availability, name: Availability}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: "#.00%"
    series_types: {}
    series_colors:
      avg_availability: "#34A853"
      avg_performance: "#34A853"
      avg_quality: "#FBBC04"
      performance: "#34A853"
      quality: "#FBBC04"
      availability: "#34A853"
    column_spacing_ratio: 0.3
    defaults_version: 1
    listen: {}
    row: 2
    col: 7
    width: 7
    height: 5
  - title: Overall Equipment Effectiveness
    name: Overall Equipment Effectiveness
    model: asset-management
    explore: oee
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [availability, performance, quality]
    sorts: [availability desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Availability,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.availability,
        _kind_hint: measure, measure: availability, type: average, _type_hint: number,
        id: 64xT0RX81f}, {category: measure, expression: !!null '', label: Performance,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.performance,
        _kind_hint: measure, measure: performance, type: average, _type_hint: number,
        id: 7GLm4cuTm2}, {category: measure, expression: !!null '', label: Quality,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.quality,
        _kind_hint: measure, measure: quality, type: average, _type_hint: number,
        id: k84tfeNT5n}, {category: table_calculation, expression: "${availability}*${performance}*${quality}",
        label: oee, value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        table_calculation: oee, _type_hint: number, id: GjCoKd8wb4}]
    hidden_fields: [availability, performance, quality]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 0
    arm_weight: 0
    spinner_length: 0
    spinner_weight: 0
    target_length: 0
    target_gap: 0
    target_weight: 0
    range_min: 0
    value_label_type: value
    value_label_font: 5
    value_label_padding: 0
    target_source: override
    target_label_type: nolabel
    target_label_font: 3
    spinner_type: inner
    fill_color: "#FBBC04"
    background_color: white
    spinner_color: "#282828"
    range_color: white
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 89
    cutout: 81
    range_x: -2
    range_y: -2
    target_label_padding: 1.06
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
    defaults_version: 0
    series_types: {}
    row: 2
    col: 1
    width: 6
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"Alert!","bold":true}],"align":"center"},{"type":"p","id":1663165765090,"children":[{"bold":true,"text":""},{"type":"a","url":"https://googlecloud.looker.com/dashboards/1594","children":[{"text":"Roller
      Slitting Machine"}],"id":1663135595207},{"text":""}],"align":"center"},{"type":"p","align":"center","id":1663129812123,"children":[{"text":"                                     is
      under                                                                "}]},{"type":"p","align":"center","id":1663130102970,"children":[{"text":"                                  60%
      Yield.                                                  "}]},{"type":"p","align":"center","id":1663130124374,"children":[{"text":"Due
      to abnormalities in "}]},{"type":"p","align":"center","id":1663130035665,"children":[{"text":"temperature
      and pressure values"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 14
    width: 5
    height: 5
  - name: Electrode Cutting Machine
    type: text
    title_text: Electrode Cutting Machine
    subtitle_text: ''
    body_text: <img src="https://storage.cloud.google.com/asset-management-demo/Electrode%20Cutting%20Machine.jpeg"
      width="1900" height="160"/>
    row: 7
    col: 1
    width: 6
    height: 5
  - title: Overview - AD Stacking Machine
    name: Overview - AD Stacking Machine
    model: asset-management
    explore: oee
    type: looker_bar
    fields: [quality, performance, availability]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Availability,
        value_format: !!null '', value_format_name: percent_0, based_on: oee.availability,
        _kind_hint: measure, measure: availability, type: average, _type_hint: number,
        id: cdBL3afYIl}, {category: measure, expression: !!null '', label: Quality,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.quality,
        _kind_hint: measure, measure: quality, type: average, _type_hint: number,
        id: qu3gfJGIMa}, {category: measure, expression: !!null '', label: Performance,
        value_format: !!null '', value_format_name: '', based_on: oee.performance,
        _kind_hint: measure, measure: performance, type: average, _type_hint: number,
        id: 5k4X61xxfc}]
    filter_expression: ${oee.equipment} = "AD Stacking Machine"
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: quality, id: quality,
            name: Quality}, {axisId: performance, id: performance, name: Performance},
          {axisId: availability, id: availability, name: Availability}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: "#.00%"
    series_types: {}
    series_colors:
      avg_availability: "#34A853"
      avg_performance: "#34A853"
      avg_quality: "#FBBC04"
      performance: "#34A853"
      quality: "#FBBC04"
      availability: "#34A853"
    column_spacing_ratio: 0.3
    defaults_version: 1
    listen: {}
    row: 12
    col: 7
    width: 6
    height: 5
  - name: AD Stacking Machine
    type: text
    title_text: AD Stacking Machine
    subtitle_text: ''
    body_text: "<img src=\"https://storage.cloud.google.com/asset-management-demo/StackingMachine.png\"\
      \ \nwidth=\"1900\" height=\"160\"/>"
    row: 7
    col: 7
    width: 6
    height: 5
  - name: Roller Slitting Machine
    type: text
    title_text: Roller Slitting Machine
    subtitle_text: ''
    body_text: <img src="https://storage.cloud.google.com/asset-management-demo/Slitting%20Machine.png"
      width="1900" height="160"/>
    row: 7
    col: 13
    width: 6
    height: 5
  - title: Overview - Roller Slitting Machine
    name: Overview - Roller Slitting Machine
    model: asset-management
    explore: oee
    type: looker_bar
    fields: [quality, performance, availability]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Availability,
        value_format: !!null '', value_format_name: percent_0, based_on: oee.availability,
        _kind_hint: measure, measure: availability, type: average, _type_hint: number,
        id: cdBL3afYIl}, {category: measure, expression: !!null '', label: Quality,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.quality,
        _kind_hint: measure, measure: quality, type: average, _type_hint: number,
        id: qu3gfJGIMa}, {category: measure, expression: !!null '', label: Performance,
        value_format: !!null '', value_format_name: '', based_on: oee.performance,
        _kind_hint: measure, measure: performance, type: average, _type_hint: number,
        id: 5k4X61xxfc}]
    filter_expression: ${oee.equipment} ="Roller Slitting Machine"
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
    x_axis_scale: ordinal
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: quality, id: quality,
            name: Quality}, {axisId: performance, id: performance, name: Performance},
          {axisId: availability, id: availability, name: Availability}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: "#.00%"
    series_types: {}
    series_colors:
      avg_availability: "#34A853"
      avg_performance: "#34A853"
      avg_quality: "#FBBC04"
      performance: "#34A853"
      quality: "#EA4335"
      availability: "#34A853"
    column_spacing_ratio: 0.3
    defaults_version: 1
    listen: {}
    row: 12
    col: 13
    width: 6
    height: 5
  - title: Overview -Electrode Cutting Machine
    name: Overview -Electrode Cutting Machine
    model: asset-management
    explore: oee
    type: looker_bar
    fields: [quality, performance, availability]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Availability,
        value_format: !!null '', value_format_name: percent_0, based_on: oee.availability,
        _kind_hint: measure, measure: availability, type: sum, _type_hint: number,
        id: gApFdi0zlP}, {category: measure, expression: !!null '', label: Quality,
        value_format: !!null '', value_format_name: !!null '', based_on: oee.quality,
        _kind_hint: measure, measure: quality, type: sum, _type_hint: number, id: Ca8LnP7QWa},
      {category: measure, expression: !!null '', label: Performance, value_format: !!null '',
        value_format_name: '', based_on: oee.performance, _kind_hint: measure, measure: performance,
        type: sum, _type_hint: number, id: PaDe3Ct8vF}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: quality, id: quality,
            name: Quality}, {axisId: performance, id: performance, name: Performance},
          {axisId: availability, id: availability, name: Availability}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    label_value_format: "#.00%"
    series_types: {}
    series_colors:
      avg_availability: "#34A853"
      avg_performance: "#34A853"
      avg_quality: "#FBBC04"
      performance: "#34A853"
      quality: "#34A853"
      availability: "#34A853"
    column_spacing_ratio: 0.3
    defaults_version: 1
    row: 12
    col: 1
    width: 6
    height: 5
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":""},{"type":"a","url":"https://googlecloud.looker.com/dashboards/1417","children":[{"text":"Factory
      Line Overview"}],"id":1663165287678},{"text":" |    "},{"type":"a","url":"https://imde.cloud.looker.com/dashboards/394","children":[{"text":"
      Electrode Cutting Machine"}],"id":1663166069824},{"text":" |    AD Stcking Machine
      |     "},{"type":"a","url":"https://imde.cloud.looker.com/dashboards/392","children":[{"text":"Roller
      Slitting Machine"}],"id":1663182238945},{"text":""}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 19
    height: 2
