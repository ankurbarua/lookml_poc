- view: date_dim
  sql_table_name: datawarehouse.date_dim
  fields:

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: date_id
    type: string
    sql: ${TABLE}.date_id

  - dimension: day_long_name
    type: string
    sql: ${TABLE}.day_long_name

  - dimension: day_of_month
    type: number
    sql: ${TABLE}.day_of_month

  - dimension: day_of_week
    type: number
    sql: ${TABLE}.day_of_week

  - dimension: day_of_year
    type: number
    sql: ${TABLE}.day_of_year

  - dimension: day_short_name
    type: string
    sql: ${TABLE}.day_short_name

  - dimension_group: full
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.full_date

  - dimension: full_day
    type: string
    sql: ${TABLE}.full_day

  - dimension: month_long_name
    type: string
    sql: ${TABLE}.month_long_name

  - dimension: month_short_name
    type: string
    sql: ${TABLE}.month_short_name

  - dimension: quarter_number
    type: number
    sql: ${TABLE}.quarter_number

  - dimension: week_of_month
    type: string
    sql: ${TABLE}.week_of_month

  - dimension: week_of_quarter
    type: number
    sql: ${TABLE}.week_of_quarter

  - dimension: week_of_year
    type: number
    sql: ${TABLE}.week_of_year

  - dimension: year_number
    type: number
    sql: ${TABLE}.year_number

  - measure: count
    type: count
    drill_fields: [day_short_name, day_long_name, month_short_name, month_long_name]

