- view: collab_usage_summary
  sql_table_name: z_looker.collab_usage_summary
  fields:
  
  - dimension: native_id
    type: number 
    primary_key: true
    sql: ${TABLE}.native_id

  - dimension: customerkey
    type: number
    sql: ${TABLE}.customerkey

  - dimension: endpoint_device
    type: string
    sql: ${TABLE}.endpoint_device
    
  - dimension_group: session_date
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.session_date

  - dimension: endpoint_os
    type: string
    sql: ${TABLE}.endpoint_os

  - dimension: native_customer_key
    type: number
    sql: ${TABLE}.native_customer_key

  - measure: participant_count
    type: sum
    sql: ${TABLE}.participant_count

  - dimension: product_key
    type: number
    sql: ${TABLE}.product_key

  - dimension: provision_channel
    type: string
    sql: ${TABLE}.provision_channel

  - measure: pstn_mins
    type: sum
    sql: ${TABLE}.pstn_mins

  - dimension: sap_account_id
    type: int
    sql: ${TABLE}.sap_account_id

  - measure: screen_sharing_mins
    type: sum
    sql: ${TABLE}.screen_sharing_mins

  - measure: session_count
    type: sum
    sql: ${TABLE}.session_count

  - dimension: session_type
    type: string
    sql: ${TABLE}.session_type

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - measure: video_mins
    type: sum
    sql: ${TABLE}.video_mins

  - measure: video_participant_count
    type: sum
    sql: ${TABLE}.video_participant_count

  - measure: voip_mins
    type: sum
    sql: ${TABLE}.voip_mins

  - measure: count
    type: count
    drill_fields: [group_name, productfullname]


