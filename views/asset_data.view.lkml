# The name of this view in Looker is "Asset Data"
view: asset_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my-demo-project-360918.Asset_Management_Demo.Asset_Data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }
  dimension: statelocation {
    type: location
    sql_latitude: ${usa_state_latitude} ;;
    sql_longitude: ${usa_state_longitude} ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
    link: {
      label: "Asset Information"
      url:  "/dashboards/409?Asset+ID={{asset_data.asset_id}}"
    }
  }


  dimension: asset_type {
    type: string
    sql: ${TABLE}.asset_type ;;
  }

  dimension: healthscore {
    type: number
    sql: ${TABLE}.healthscore ;;


  }

  dimension: is_underwarranty {
    type: string
    sql: ${TABLE}.is_underwarranty ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;


  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }


  dimension: usa_state_latitude {
    type: number
    sql: ${TABLE}.usa_state_latitude ;;
  }

  dimension: usa_state_longitude {
    type: number
    sql: ${TABLE}.usa_state_longitude ;;
  }

  measure: asset_utilization {
    type: number
    sql: 85 ;;
  }

  measure: total_alerts {
    type: number
    sql: 189 ;;
  }

  measure: asset_availability {
    type: number
    sql: 70 ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }


}
