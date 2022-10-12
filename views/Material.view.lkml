view: Material {
  derived_table: {
    sql: SELECT * FROM `general-demo-364117.Asset_Management_Demo.Materials`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: createdon_ {
    type: date
    datatype: date
    sql: ${TABLE}.Createdon_ ;;
  }

  dimension: updatedon {
    type: date
    datatype: date
    sql: ${TABLE}.Updatedon ;;
  }

  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  set: detail {
    fields: [material, quantity, createdon_, updatedon, state]
  }
}
