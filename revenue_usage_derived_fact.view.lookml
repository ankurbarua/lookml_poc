
- view: revenue_usage_derived_fact
  derived_table:
    sql: |
      select a.customerkey, a.productkey, a.reporting_month, a.monthly_base_revenue, a.base_unit, a.base_quantity, 
      a.base_unit_price, a.total_unit_amount, b.session_count, b.screen_sharing_mins, b.pstn_mins, b.video_mins,
      b.video_participant_count, b.voip_mins from z_looker.base_estimated_revenue_fact a left outer join 
      (select customerkey, product_key,  date_trunc('month', session_date) session_date, sum(session_count) session_count, sum(screen_sharing_mins) 
      screen_sharing_mins, sum(pstn_mins) pstn_mins, sum(video_mins) video_mins, sum(video_participant_count) 
      video_participant_count, sum(voip_mins) voip_mins from z_looker.collab_usage_summary group by customerkey, 
      product_key, date_trunc('month', session_date)) b on a.customerkey = b.customerkey and a.productkey = b.product_key and 
      a.reporting_month = b.session_date
    sql_trigger_value: SELECT CURDATE()
    distribution: "customerkey"
    indexes: [customerkey, productkey]

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

  - measure: monthly_base_revenue
    type: sum
    decimals: 2
    sql: ${TABLE}.monthly_base_revenue

  - measure: base_unit
    type: sum
    sql: ${TABLE}.base_unit

  - measure: base_quantity
    type: sum
    sql: ${TABLE}.base_quantity

  - measure: base_unit_price
    type: sum
    decimals: 2
    sql: ${TABLE}.base_unit_price

  - measure: total_unit_amount
    type: sum
    decimals: 2
    sql: ${TABLE}.total_unit_amount

  - measure: session_count
    type: sum
    sql: ${TABLE}.session_count

  - measure: screen_sharing_mins
    type: sum
    decimals: 2
    sql: ${TABLE}.screen_sharing_mins

  - measure: pstn_mins
    type: sum
    decimals: 2
    sql: ${TABLE}.pstn_mins

  - measure: video_mins
    type: sum
    decimals: 2
    sql: ${TABLE}.video_mins

  - measure: video_participant_count
    type: sum
    sql: ${TABLE}.video_participant_count

  - measure: voip_mins
    type: sum
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

