view: Material {
  derived_table: {
    sql: SELECT * FROM `my-demo-project-360918.bq_pubsub.Materials`
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

  set: detail {
    fields: [material, quantity, createdon_, updatedon]
  }
}
