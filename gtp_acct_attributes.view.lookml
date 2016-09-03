- view: gtp_acct_attributes
  sql_table_name: datawarehouse.gtp_acct_attributes
  fields:

  - dimension: account_growth_enabled
    type: string
    sql: ${TABLE}.account_growth_enabled

  - dimension: account_growth_limit
    type: int
    sql: ${TABLE}.account_growth_limit

  - dimension: blocked_ips_ams
    type: string
    sql: ${TABLE}.blocked_ips_ams

  - dimension: business_continuity
    type: string
    sql: ${TABLE}.business_continuity

  - dimension: customer_id
    type: string
    sql: ${TABLE}.customer_id

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: feature_level
    type: string
    sql: ${TABLE}.feature_level

  - dimension: g2c_account_growth_response
    type: string
    sql: ${TABLE}.g2c_account_growth_response

  - dimension: g2c_signature_protocol
    type: string
    sql: ${TABLE}.g2c_signature_protocol

  - dimension: gtp_acct_attr_id
    type: string
    sql: ${TABLE}.gtp_acct_attr_id

  - dimension: native_service_account_id
    type: string
    sql: ${TABLE}.native_service_account_id

  - dimension: online_addons
    type: string
    sql: ${TABLE}.online_addons

  - dimension: pro_upgrade_account
    type: string
    sql: ${TABLE}.pro_upgrade_account

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: source_customer_id
    type: string
    sql: ${TABLE}.source_customer_id

  - dimension: webservice_api
    type: string
    sql: ${TABLE}.webservice_api

  - measure: record_count
    type: count
    drill_fields: detail*

