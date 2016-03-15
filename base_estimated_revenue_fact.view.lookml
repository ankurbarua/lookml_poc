- view: base_estimated_revenue_fact
  sql_table_name: z_looker.base_estimated_revenue_fact
  fields:

  - dimension_group: base_est_revenue
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.base_est_revenue_date

  - measure: base_quantity
    type: sum
    sql: ${TABLE}.base_quantity

  - measure: base_unit_price
    type: sum
    sql: ${TABLE}.base_unit_price

  - measure: total_revenue
    type: sum
    sql: ${TABLE}.base_unit_price * ${TABLE}.base_quantity
    
  - dimension: commerce_channel_key
    type: number
    sql: ${TABLE}.commerce_channel_key

  - dimension: currencykey
    type: number
    sql: ${TABLE}.currencykey

  - dimension: customerkey
    type: number
    sql: ${TABLE}.customerkey

  - measure: monthly_base_revenue
    type: sum
    sql: ${TABLE}.monthly_base_revenue

  - dimension: productkey
    type: number
    sql: ${TABLE}.productkey

  - measure: prorated_base_revenue
    type: sum
    sql: ${TABLE}.prorated_base_revenue

  - dimension: regionmappingkey
    type: number
    sql: ${TABLE}.regionmappingkey

  - dimension: reporting_days
    type: number
    sql: ${TABLE}.reporting_days

  - dimension_group: reporting_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reporting_end_date

  - dimension_group: reporting_month
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reporting_month

  - dimension: reporting_month_days
    type: number
    sql: ${TABLE}.reporting_month_days

  - dimension: reporting_month_end_flag
    type: string
    sql: ${TABLE}.reporting_month_end_flag

  - dimension_group: reporting_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reporting_start_date

  - dimension_group: service_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.service_end_date

  - dimension_group: service_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.service_start_date

  - dimension: skukey
    type: number
    sql: ${TABLE}.skukey

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - measure: total_unit_amount
    type: sum
    sql: ${TABLE}.total_unit_amount

  - measure: count
    type: count
    drill_fields: []

