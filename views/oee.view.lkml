view: oee {
  derived_table: {
    sql: SELECT * FROM `my-demo-project-360918.bq_pubsub.oee-details`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: availability {
    type: number
    sql: ${TABLE}.Availability ;;
  }

  dimension: performance {
    type: number
    sql: ${TABLE}.Performance ;;
  }

  dimension: quality {
    type: number
    sql: ${TABLE}.Quality ;;
  }

  dimension: equipment {
    type: string
    sql: ${TABLE}.Equipment ;;
  }

  set: detail {
    fields: [availability, performance, quality, equipment]
  }
}
