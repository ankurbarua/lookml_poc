- view: source_customer_dim
  sql_table_name: datawarehouse.source_customer_dim
  fields:

  - dimension: auto_invoice_flag
    type: string
    sql: ${TABLE}.auto_invoice_flag

  - dimension: bidbref_cust_id
    type: string
    sql: ${TABLE}.bidbref_cust_id

  - dimension: billing_city
    type: string
    sql: ${TABLE}.billing_city

  - dimension: billing_country_code
    type: string
    sql: ${TABLE}.billing_country_code

  - dimension: billing_country_name
    type: string
    sql: ${TABLE}.billing_country_name

  - dimension: billing_postal_code
    type: string
    sql: ${TABLE}.billing_postal_code

  - dimension: billing_state_code
    type: string
    sql: ${TABLE}.billing_state_code

  - dimension: billing_state_name
    type: string
    sql: ${TABLE}.billing_state_name

  - dimension: billing_street
    type: string
    sql: ${TABLE}.billing_street

  - dimension_group: create_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.create_date_time

  - dimension: customer_email
    type: string
    sql: ${TABLE}.customer_email

  - dimension: customer_id
    type: string
    sql: ${TABLE}.customer_id

  - dimension: customer_name
    type: string
    sql: ${TABLE}.customer_name

  - dimension: customer_status
    type: string
    sql: ${TABLE}.customer_status

  - dimension: customer_type
    type: string
    sql: ${TABLE}.customer_type

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: data_source_name
    type: string
    sql: ${TABLE}.data_source_name

  - dimension: key_customer_flag
    type: string
    sql: ${TABLE}.key_customer_flag

  - dimension: migration_data_source_name
    type: string
    sql: ${TABLE}.migration_data_source_name

  - dimension_group: migration_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.migration_date_time

  - dimension: native_billing_id
    type: string
    sql: ${TABLE}.native_billing_id

  - dimension: native_mdm_customer_id
    type: string
    sql: ${TABLE}.native_mdm_customer_id

  - dimension: native_parent_customer_id
    type: string
    sql: ${TABLE}.native_parent_customer_id

  - dimension: native_salesforce_account_id
    type: string
    sql: ${TABLE}.native_salesforce_account_id

  - dimension: native_source_customer_id
    type: string
    sql: ${TABLE}.native_source_customer_id

  - dimension: native_universal_id
    type: string
    sql: ${TABLE}.native_universal_id

  - dimension: new_native_customer_id
    type: string
    sql: ${TABLE}.new_native_customer_id

  - dimension: source_customer_id
    type: string
    sql: ${TABLE}.source_customer_id

  - dimension: test_customer_flag
    type: string
    sql: ${TABLE}.test_customer_flag

  - dimension: vat_number
    type: string
    sql: ${TABLE}.vat_number

  - measure: record_count
    type: count
    drill_fields: [customer_name, billing_state_name, billing_country_name, migration_data_source_name, data_source_name]
    
  - measure: distinct_new_customers
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.new_native_customer_id

  - measure: distinct_customers
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.source_customer_id
    
  - measure: distinct_universal_ids
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_universal_id
    
  - measure: distinct_salesforce_accounts
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_salesforce_account_id
    
  - measure: distinct_billing_ids
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_billing_id
    
  - measure: distinct_parent_customers
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_parent_customer_id

