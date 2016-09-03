- view: gtm_acct_attributes
  sql_table_name: datawarehouse.gtm_acct_attributes
  fields:

  - dimension: customer_id
    type: string
    sql: ${TABLE}.customer_id

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: gtm_acct_attr_id
    type: string
    sql: ${TABLE}.gtm_acct_attr_id

  - dimension: is_coorganizer_promotion_provisioned
    type: string
    sql: ${TABLE}.is_coorganizer_promotion_provisioned

  - dimension: is_organizer_promotion_provisioned
    type: string
    sql: ${TABLE}.is_organizer_promotion_provisioned

  - dimension: is_recordmeetings_provisioned
    type: string
    sql: ${TABLE}.is_recordmeetings_provisioned

  - dimension: is_sightboard_provisioned
    type: string
    sql: ${TABLE}.is_sightboard_provisioned

  - dimension: is_webcam_provisioned
    type: string
    sql: ${TABLE}.is_webcam_provisioned

  - dimension: native_license_id
    type: string
    sql: ${TABLE}.native_license_id

  - dimension: native_service_account_id
    type: string
    sql: ${TABLE}.native_service_account_id

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: rooms_provisioned
    type: string
    sql: ${TABLE}.rooms_provisioned

  - dimension: source_customer_id
    type: string
    sql: ${TABLE}.source_customer_id

  - measure: record_count
    type: count
    drill_fields: detail*

