view: states {


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }
  set: detail {
    fields: [state]
  }
}
