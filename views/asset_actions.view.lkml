# The name of this view in Looker is "Asset Actions"
view: asset_actions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `general-demo-364117.demo.AssetActions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alert" in Explore.

  dimension: alert {
    type: string
    sql: ${TABLE}.Alert ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.AssetID ;;
  }

  dimension: complexity {
    type: number
    sql: ${TABLE}.complexity ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: daysuntil_maintenance {
    type: number
    sql: ${TABLE}.DaysuntilMaintenance ;;
  }

  dimension: heath_score {
    type: number
    sql: ${TABLE}.HeathScore ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
