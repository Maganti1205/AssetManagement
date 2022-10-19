view: states {
  derived_table: {
    sql: SELECT 08550 as zip
         Union all
        Select 77494 as zip
        union all
        select 93314 as zip

      ;;
  }



  dimension: zip {
    type: zipcode
    sql: ${TABLE}.states ;;
  }



}
