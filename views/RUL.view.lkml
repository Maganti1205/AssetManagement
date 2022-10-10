# The name of this view in Looker is "Rul"
view: RUL {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Asset_Management_Demo.RUL`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actual Rul" in Explore.

  dimension: actual_rul {
    type: number
    sql: ${TABLE}.ActualRUL ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_actual_rul {
    type: sum
    sql: ${actual_rul} ;;
  }

  measure: average_actual_rul {
    type: average
    sql: ${actual_rul} ;;
  }

  dimension: cycle {
    type: number
    sql: ${TABLE}.Cycle ;;
  }

  dimension: equipment {
    type: string
    sql: ${TABLE}.Equipment ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: predicted_rul {
    type: number
    sql: ${TABLE}.PredictedRUL ;;
  }

  dimension: pressure {
    type: number
    sql: ${TABLE}.Pressure ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.Temperature ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
