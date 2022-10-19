view: states {
  derived_table: {
    sql: Select 08550 as zip
      union all
      select 77494 as zip
      union all
      select 99314 as zip
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  set: detail {
    fields: [zip]
  }
}
