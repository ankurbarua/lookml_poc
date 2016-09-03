- view: product_dim
  sql_table_name: datawarehouse.product_dim
  fields:

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: line_of_business
    type: string
    sql: ${TABLE}.line_of_business

  - dimension: offering
    type: string
    sql: ${TABLE}.offering

  - dimension: offering_cloud
    type: string
    sql: ${TABLE}.offering_cloud

  - dimension: product_abbreviation
    type: string
    sql: ${TABLE}.product_abbreviation

  - dimension: product_category
    type: string
    sql: ${TABLE}.product_category

  - dimension: product_full_name
    type: string
    sql: ${TABLE}.product_full_name

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: product_tier
    type: string
    sql: ${TABLE}.product_tier

  - measure: count
    type: count
    drill_fields: [product_full_name]

