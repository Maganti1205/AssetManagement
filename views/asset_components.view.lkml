# The name of this view in Looker is "Asset Components"
view: asset_components {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `general-demo-364117.Asset_Management_Demo.AssetComponents`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Asset ID" in Explore.

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}.Component ;;
  }

  dimension: healthscore {
    type: number
    sql: ${TABLE}.Healthscore ;;
  }


  dimension: Action {
    type: string
    sql: ${TABLE}.Action ;;
  }


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_healthscore {
    type: sum
    sql: ${healthscore} ;;
  }

  measure: average_healthscore {
    type: average
    sql: ${healthscore} ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_id,component]
  }
}
