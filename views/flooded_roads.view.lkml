# The name of this view in Looker is "Flooded Roads"
view: flooded_roads {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my-demo-project-360918.ee_export.flooded_roads` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area" in Explore.

  dimension: area {
    type: number
    sql: ${TABLE}.area ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_area {
    type: sum
    sql: ${area} ;;  }
  measure: average_area {
    type: average
    sql: ${area} ;;  }

  dimension: changeset {
    type: number
    sql: ${TABLE}.changeset ;;
  }

  dimension: flood_poly {
    type: string
    sql: ${TABLE}.flood_poly ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: osm_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.osm_timestamp ;;
  }

  dimension: road_geometry {
    type: string
    sql: ${TABLE}.road_geometry ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
