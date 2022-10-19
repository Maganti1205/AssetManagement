view: states {
  derived_table: {
    sql: Select '08550' as zip , 900 as Assets
      union all
      select '77494' as zip, 800 as Assets
      union all
      select '93314' as zip, 1000 as Assets
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
  dimension: Assets {
    type: number
    sql: ${TABLE}.Assets ;;
  }

  set: detail {
    fields: [zip,Assets]
  }
}
