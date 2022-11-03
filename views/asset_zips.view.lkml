# The name of this view in Looker is "Asset Zips"
view: asset_zips {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Asset_Management_Demo.AssetZips`
    ;;
  drill_fields: [zip]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: zip {
    primary_key: yes
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "State ID" in Explore.

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }
  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state_id ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  measure: count {
    type: count
    drill_fields: [zip]
  }
}
