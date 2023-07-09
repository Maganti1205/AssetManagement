# The name of this view in Looker is "Assettelemetry"
view: assettelemetry {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my-demo-project-360918.Asset_Management_Demo.AssetTelemetry_v`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: ${TABLE}.DeviceID ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.DeviceName ;;
  }

  measure: frequency {
    type: average
    sql: ${TABLE}.Frequency ;;
  }


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.




  measure: actual_fuel {
    type: average
    sql: ${TABLE}.Actual_Fuel;;
  }
  measure: predicted_fuel {
    type: average
    sql: ${TABLE}.Predicted_Fuel;;
  }
  measure: oem_fuel {
    type: average
    sql: ${TABLE}.OEM_Fuel;;
  }
  measure: current {
    type: average
    sql: ${TABLE}.curr;;
  }
  measure: load {
    type: average
    sql: ${TABLE}.load;;
  }

  measure: pressure {
    type: average
    sql: ${TABLE}.Pressure ;;
  }

  dimension: cycle {
    type: number
    sql: ${TABLE}.rn ;;
  }

  measure: speed {
    type: average
    sql: ${TABLE}.Speed ;;
  }

  measure: temperature {
    type: average
    sql: ${TABLE}.Temperature
    ;;
  }

  measure: vibration {
    type: average
    sql: ${TABLE}.vibration
      ;;
  }

  measure: runtime {
    type: average
    sql: ${TABLE}.runtime
      ;;
  }

  measure: healthscore {
    type: average
    sql: ${TABLE}.HealthScore
      ;;
  }

  measure: batteryhealth {
    type: average
    sql: ${TABLE}.BatteryHealth
      ;;
  }

  measure: assethealthscore {
    type: average
    sql: ${TABLE}.AssetHealthScore
      ;;
  }

  measure: engineefficiency {
    type: average
    sql: ${TABLE}.Engine_Efficiency
      ;;
  }
  dimension: elevation {
    type: string
    sql: ${TABLE}.elev_img;;
    html: <img src="https://storage.cloud.google.com/asset-management-demo/Power%20Generator.jpeg" /> ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      minute,
      second,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Timestamp ;;
  }

  measure: voltage {
    type: average
    sql: ${TABLE}.Voltage ;;
  }


}
