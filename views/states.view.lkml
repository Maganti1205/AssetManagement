view: states {


  measure: count {
    type: count
    drill_fields: [state]
  }

  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }}
