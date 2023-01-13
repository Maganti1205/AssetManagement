# The name of this view in Looker is "Asset Final"
view: asset_final {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `general-demo-364117.Asset_Management_Demo.Asset_Final`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.AssetID ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.AssetName ;;
  }

  dimension: asset_number {
    type: number
    sql: ${TABLE}.AssetNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: statelocation {
    type: location
    sql_latitude: ${usa_state_latitude} ;;
    sql_longitude: ${usa_state_longitude} ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.StateCode ;;
  }

  dimension: usa_state_latitude {
    type: number
    sql: ${TABLE}.usa_state_latitude ;;
  }

  dimension: usa_state_longitude {
    type: number
    sql: ${TABLE}.usa_state_longitude ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_name]
  }
}
