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
  # This dimension will be called "Action" in Explore.

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: recommendation {
    type: string
    sql: ${TABLE}.Recommendation ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
