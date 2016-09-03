- view: user_provisioning_fact
  sql_table_name: datawarehouse.user_provisioning_fact
  fields:

  - dimension: bidbref_upf_id
    type: string
    sql: ${TABLE}.bidbref_upf_id

  - dimension: bidbref_urb_id
    type: string
    sql: ${TABLE}.bidbref_urb_id

  - dimension: customer_id
    type: string
    sql: ${TABLE}.customer_id

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: data_source_name
    type: string
    sql: ${TABLE}.data_source_name

  - dimension: entitlement_date_id
    type: string
    sql: ${TABLE}.entitlement_date_id

  - dimension_group: entitlement_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.entitlement_date_time

  - dimension: native_entitlement_id
    type: string
    sql: ${TABLE}.native_entitlement_id

  - dimension: native_service_account_id
    type: string
    sql: ${TABLE}.native_service_account_id

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: role_name
    type: string
    sql: ${TABLE}.role_name

  - dimension: role_status
    type: string
    sql: ${TABLE}.role_status

  - dimension: source_customer_id
    type: string
    sql: ${TABLE}.source_customer_id

  - dimension: source_user_id
    type: string
    sql: ${TABLE}.source_user_id

  - dimension: user_id
    type: string
    sql: ${TABLE}.user_id

  - dimension: user_provisioning_id
    type: string
    sql: ${TABLE}.user_provisioning_id

  - measure: record_count
    type: count
    drill_fields: [role_name, data_source_name]
    
  - measure: distinct_customers
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.customer_id
    
  - measure: distinct_users
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.source_user_id
    
  - measure: distinct_service_accounts
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_service_account_id
    
  sets:
    detail:
      - customer_id
      - product_id
      - role_name
      - source_customer_id
      - source_user_id
      - user_id
      - user_provisioning_id

