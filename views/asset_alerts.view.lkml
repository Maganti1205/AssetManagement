# The name of this view in Looker is "Asset Alerts"
view: asset_alerts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my-demo-project-360918.Asset_Management_Demo.AssetAlerts`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alert" in Explore.

  dimension: alert {
    type: string
    sql: ${TABLE}.alert ;;
    html:
    {% if type._value == "Shutdown" %}

      <p><img src="https://storage.mtls.cloud.google.com/asset-management-demo-latest/Error%20(1).jpeg" height=15 width=15>{{ alert }}</p>

    {% else %}

      <p><img src="https://storage.mtls.cloud.google.com/asset-management-demo-latest/Warning%20(1).jpeg" height=15 width=15>{{ alert }}</p>

    {% endif %} ;;

  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.Code ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.



  dimension: priority {
    type: number
    sql: ${TABLE}.Priority ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Time ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }


}
