# The name of this view in Looker is "Asset Data"
view: asset_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `general-demo-364117.Asset_Management_Demo.AssetData`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Asset ID" in Explore.

  dimension: asset_id {
    type: string
    sql: ${TABLE}.Asset_Id ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: zipcodes {
    map_layer_name: us_zipcode_tabulation_areas
    sql: ${TABLE}.state ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
