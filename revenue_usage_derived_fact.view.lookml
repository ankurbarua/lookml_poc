
- view: revenue_usage_derived_fact
  derived_table:
    sql: |
      select a.customerkey, a.productkey, a.reporting_month, b.session_date, a.monthly_base_revenue, a.base_unit, a.base_quantity, a.base_unit_price, a.total_unit_amount, b.session_count, b.screen_sharing_mins, b.pstn_mins, b.video_mins, b.video_participant_count, b.voip_mins from z_looker.base_estimated_revenue_fact a, z_looker.collab_usage_summary b where a.customerkey = b.customerkey and a.productkey = b.product_key and a.reporting_month = b.session_date

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: customerkey
    type: int
    sql: ${TABLE}.customerkey

  - dimension: productkey
    type: int
    sql: ${TABLE}.productkey

  - dimension_group: reporting_month
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reporting_month

  - dimension_group: session_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_date

  - dimension: monthly_base_revenue
    type: number
    decimals: 2
    sql: ${TABLE}.monthly_base_revenue

  - dimension: base_unit
    type: string
    sql: ${TABLE}.base_unit

  - dimension: base_quantity
    type: int
    sql: ${TABLE}.base_quantity

  - dimension: base_unit_price
    type: number
    decimals: 2
    sql: ${TABLE}.base_unit_price

  - dimension: total_unit_amount
    type: number
    decimals: 2
    sql: ${TABLE}.total_unit_amount

  - dimension: session_count
    type: int
    sql: ${TABLE}.session_count

  - dimension: screen_sharing_mins
    type: number
    decimals: 2
    sql: ${TABLE}.screen_sharing_mins

  - dimension: pstn_mins
    type: number
    decimals: 2
    sql: ${TABLE}.pstn_mins

  - dimension: video_mins
    type: number
    decimals: 2
    sql: ${TABLE}.video_mins

  - dimension: video_participant_count
    type: int
    sql: ${TABLE}.video_participant_count

  - dimension: voip_mins
    type: number
    decimals: 2
    sql: ${TABLE}.voip_mins

  sets:
    detail:
      - customerkey
      - productkey
      - reporting_month_time
      - session_date_time
      - monthly_base_revenue
      - base_unit
      - base_quantity
      - base_unit_price
      - total_unit_amount
      - session_count
      - screen_sharing_mins
      - pstn_mins
      - video_mins
      - video_participant_count
      - voip_mins

