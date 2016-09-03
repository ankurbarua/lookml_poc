- view: source_user_dim
  sql_table_name: datawarehouse.source_user_dim
  fields:

  - dimension: bidbref_source_user_id
    type: string
    sql: ${TABLE}.bidbref_source_user_id

  - dimension_group: create_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.create_date_time

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension: data_source_name
    type: string
    sql: ${TABLE}.data_source_name

  - dimension: locale
    type: string
    sql: ${TABLE}.locale

  - dimension: migration_data_source_name
    type: string
    sql: ${TABLE}.migration_data_source_name

  - dimension_group: migration_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.migration_date_time

  - dimension: native_mdm_user_id
    type: string
    sql: ${TABLE}.native_mdm_user_id

  - dimension: native_salesforce_user_id
    type: string
    sql: ${TABLE}.native_salesforce_user_id

  - dimension: native_user_id
    type: string
    sql: ${TABLE}.native_user_id

  - dimension: new_native_user_id
    type: string
    sql: ${TABLE}.new_native_user_id

  - dimension: primary_email_address
    type: string
    sql: ${TABLE}.primary_email_address

  - dimension: source_user_id
    type: string
    sql: ${TABLE}.source_user_id

  - dimension: user_id
    type: string
    sql: ${TABLE}.user_id

  - dimension: user_type
    type: string
    sql: ${TABLE}.user_type

  - measure: record_count
    type: count
    drill_fields: [migration_data_source_name, data_source_name]
    
  - measure: distinct_mdm_users
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_mdm_user_id

  - measure: distinct_salesforce_users
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_salesforce_user_id
    
  - measure: distinct_native_users
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_user_id
    
  - measure: distinct_users
    type: count_distinct
    # decimals: 2
    sql: ${TABLE}.native_source_user_id

