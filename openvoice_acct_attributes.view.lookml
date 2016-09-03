- view: openvoice_acct_attributes
  sql_table_name: datawarehouse.openvoice_acct_attributes
  fields:

  - dimension: allowed_tollfree_countries
    type: string
    sql: ${TABLE}.allowed_tollfree_countries

  - dimension: customer_id
    type: string
    sql: ${TABLE}.customer_id

  - dimension_group: data_load_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.data_load_date_time

  - dimension_group: enabled_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.enabled_date_time

  - dimension: is_call_join_conf_enabled
    type: string
    sql: ${TABLE}.is_call_join_conf_enabled

  - dimension: is_conf_charge_code_locked
    type: string
    sql: ${TABLE}.is_conf_charge_code_locked

  - dimension: is_toll_default
    type: string
    sql: ${TABLE}.is_toll_default

  - dimension: is_toll_enabled
    type: string
    sql: ${TABLE}.is_toll_enabled

  - dimension: native_numberset_id
    type: string
    sql: ${TABLE}.native_numberset_id

  - dimension: native_service_account_id
    type: string
    sql: ${TABLE}.native_service_account_id

  - dimension: openvoice_acct_attr_id
    type: string
    sql: ${TABLE}.openvoice_acct_attr_id

  - dimension: product_id
    type: string
    sql: ${TABLE}.product_id

  - dimension: source_customer_id
    type: string
    sql: ${TABLE}.source_customer_id

  - measure: record_count
    type: count
    drill_fields: detail*

