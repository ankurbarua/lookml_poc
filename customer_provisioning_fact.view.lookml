- view: customer_provisioning_fact
  sql_table_name: datawarehouse.customer_provisioning_fact
  fields:

  - dimension: arh_flag
    type: string
    sql: ${TABLE}.arh_flag

  - dimension: bidbref_apf_id
    type: string
    sql: ${TABLE}.bidbref_apf_id

  - dimension: cust_provisioning_id
    type: string
    sql: ${TABLE}.cust_provisioning_id

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

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - measure: entitled_seats
    type: sum
    sql: ${TABLE}.entitled_seats

  - dimension: native_entitlement_id
    type: string
    sql: ${TABLE}.native_entitlement_id

  - dimension: native_service_account_id
    type: string
    sql: ${TABLE}.native_service_account_id

  - dimension: ovi_enabled_flag
    type: string
    sql: ${TABLE}.ovi_enabled_flag

  - dimension: ovi_provisioned_flag
    type: string
    sql: ${TABLE}.ovi_provisioned_flag

  - measure: paid_seats
    type: sum
    sql: ${TABLE}.paid_seats

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: provision_status
    type: string
    sql: ${TABLE}.provision_status

  - dimension: provisioning_date_id
    type: string
    sql: ${TABLE}.provisioning_date_id

  - dimension_group: provisioning_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.provisioning_date_time

  - dimension: service_type
    type: string
    sql: ${TABLE}.service_type

  - dimension: source_customer_id
    type: string
    sql: ${TABLE}.source_customer_id

  - measure: record_count
    type: count
    drill_fields: [data_source_name]
    
  - measure: distinct_customers
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.source_customer_id

