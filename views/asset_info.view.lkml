# The name of this view in Looker is "Asset Info"
view: asset_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `general-demo-364117.Asset_Management_Demo.AssetInfo`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: acq {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.acq_date ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Asset Category" in Explore.

  dimension: asset_category {
    type: string
    sql: ${TABLE}.asset_category ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
    link: {
      label: "Asset Information"
      url:  "https://imde.cloud.looker.com/dashboards/409?Asset+ID={{asset_info.asset_id}}"
    }
    }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.asset_type ;;
  }

  dimension: firmware {
    type: string
    sql: ${TABLE}.firmware_version ;;
  }
  dimension: battery {
    type: number
    sql: ${TABLE}.Battery ;;
  }
  dimension: failures {
    type: number
    sql: ${TABLE}.Failures ;;
  }

  dimension:airfilter {
    type: number
    sql: ${TABLE}.Air_Filter ;;
  }

  dimension:fuelfilter {
    type: number
    sql: ${TABLE}.Fuel_Filter ;;
  }


  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
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
    sql_latitude: ${state_latitude} ;;
    sql_longitude: ${state_longitude} ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_latitude {
    type: number
    sql: ${TABLE}.state_latitude ;;
  }

  dimension: state_longitude {
    type: number
    sql: ${TABLE}.state_longitude ;;
  }
  dimension: asset_status {
    type: string
    sql: ${TABLE}.asset_status ;;
  }
  dimension: fuel_level {
    type: number
    sql: ${TABLE}.fuel_level ;;
  }
  dimension: battery_health {
    type: number
    sql: ${TABLE}.battery_health ;;
  }
  dimension: Sustainability {
    type: number
    sql: ${TABLE}.Sustainability ;;
  }
  dimension: Alert {
    type: string
    sql: ${TABLE}.Alert;;
    html:
    <p><img src="https://findicons.com/files/icons/2077/free_common/64/exclamation5.png" height=20 width=20>{{ Alert }}</p>
    ;;
  }
  dimension: Priority {
    type: string
    sql: ${TABLE}.Priority ;;
  }
  dimension: Alerts {

    type: string

    html: <div style="white-space:pre">{{ value }}</div> ;;

    sql: concat(${asset_id},  "\n\r" , ${Alert}) ;;

  }




  dimension_group: warranty_expiry {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.warranty_expiry_date ;;
  }



  measure: count {
    type: count
    drill_fields: [state,asset_category,asset_id,asset_type,asset_status]
  }
}
