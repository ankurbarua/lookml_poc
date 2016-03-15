- view: customers_dim
  sql_table_name: z_looker.customers_dim
  fields:

  - dimension_group: accounts_dbtimestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.accounts_dbtimestamp

  - dimension: auto_invoice_flag
    type: int
    sql: ${TABLE}.auto_invoice_flag

  - dimension: billing_address1
    type: string
    sql: ${TABLE}.billing_address1

  - dimension: billing_address2
    type: string
    sql: ${TABLE}.billing_address2

  - dimension: billing_address3
    type: string
    sql: ${TABLE}.billing_address3

  - dimension: billing_address4
    type: string
    sql: ${TABLE}.billing_address4

  - dimension: billing_city
    type: string
    sql: ${TABLE}.billing_city

  - dimension: billing_contact_first_name
    type: string
    sql: ${TABLE}.billing_contact_first_name

  - dimension: billing_contact_last_name
    type: string
    sql: ${TABLE}.billing_contact_last_name

  - dimension: billing_country_code
    type: string
    sql: ${TABLE}.billing_country_code

  - dimension: billing_country_name
    type: string
    sql: ${TABLE}.billing_country_name

  - dimension: billing_email_address
    type: string
    sql: ${TABLE}.billing_email_address

  - dimension: billing_postal_code
    type: string
    sql: ${TABLE}.billing_postal_code

  - dimension: billing_state_code
    type: string
    sql: ${TABLE}.billing_state_code

  - dimension: billing_state_name
    type: string
    sql: ${TABLE}.billing_state_name

  - dimension_group: billings_dbtimestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.billings_dbtimestamp

  - dimension: business_phone
    type: string
    sql: ${TABLE}.business_phone

  - dimension: currentrecord
    type: string
    sql: ${TABLE}.currentrecord

  - dimension: customer_billing_cycle
    type: string
    sql: ${TABLE}.customer_billing_cycle

  - dimension_group: customer_createdate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.customer_createdate

  - dimension: customer_email_address
    type: string
    sql: ${TABLE}.customer_email_address

  - dimension: customer_legal_name
    type: string
    sql: ${TABLE}.customer_legal_name

  - dimension: customer_name
    type: string
    sql: ${TABLE}.customer_name

  - dimension_group: customer_paid_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.customer_paid_start_date

  - dimension: customer_payment_term
    type: string
    sql: ${TABLE}.customer_payment_term

  - dimension: customer_status
    type: string
    sql: ${TABLE}.customer_status

  - dimension: customer_type
    type: string
    sql: ${TABLE}.customer_type

  - dimension: customer_type_desc
    type: string
    sql: ${TABLE}.customer_type_desc

  - dimension: customer_url
    type: string
    sql: ${TABLE}.customer_url

  - dimension: customercreatedatekey
    type: number
    sql: ${TABLE}.customercreatedatekey

  - dimension: customerkey
    type: number
    sql: ${TABLE}.customerkey

  - dimension_group: datevalidfrom
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datevalidfrom

  - dimension_group: datevalidto
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.datevalidto

  - dimension_group: etljobtimestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.etljobtimestamp

  - dimension: fax_number
    type: string
    sql: ${TABLE}.fax_number

  - dimension_group: fax_updatedate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.fax_updatedate

  - dimension: generated_by
    type: string
    sql: ${TABLE}.generated_by

  - dimension: hold_usage_based_invoice
    type: string
    sql: ${TABLE}.hold_usage_based_invoice

  - dimension: invoice_format
    type: string
    sql: ${TABLE}.invoice_format

  - dimension: key_customer_flag
    type: int
    sql: ${TABLE}.key_customer_flag

  - dimension_group: migration_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.migration_datetime

  - dimension: nativecustomerkey
    type: number
    sql: ${TABLE}.nativecustomerkey

  - dimension: new_nativecustomerkey
    type: number
    sql: ${TABLE}.new_nativecustomerkey

  - dimension: parent_customer_key
    type: number
    sql: ${TABLE}.parent_customer_key

  - dimension_group: partner_updatedate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.partner_updatedate

  - dimension_group: phone_updatedate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.phone_updatedate

  - dimension: purchaser_contact_first_name
    type: string
    sql: ${TABLE}.purchaser_contact_first_name

  - dimension: purchaser_contact_last_name
    type: string
    sql: ${TABLE}.purchaser_contact_last_name

  - dimension: sales_group
    type: string
    sql: ${TABLE}.sales_group

  - dimension: sales_office
    type: string
    sql: ${TABLE}.sales_office

  - dimension: sales_org_region
    type: string
    sql: ${TABLE}.sales_org_region

  - dimension: sap_account_id
    type: int
    sql: ${TABLE}.sap_account_id

  - dimension: sfdc_account_id
    type: string
    sql: ${TABLE}.sfdc_account_id

  - dimension: source
    type: string
    sql: ${TABLE}.source

  - dimension: tax_exempt_flag
    type: int
    sql: ${TABLE}.tax_exempt_flag

  - dimension: test_customer_flag
    type: int
    sql: ${TABLE}.test_customer_flag

  - dimension: updater_reason_code
    type: string
    sql: ${TABLE}.updater_reason_code

  - dimension: updater_response_code
    type: string
    sql: ${TABLE}.updater_response_code

  - dimension_group: userinfos_dbtimestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.userinfos_dbtimestamp

  - dimension: vat_number
    type: string
    sql: ${TABLE}.vat_number

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - customer_name
    - customer_legal_name
    - billing_contact_first_name
    - billing_contact_last_name
    - purchaser_contact_first_name
    - purchaser_contact_last_name
    - billing_state_name
    - billing_country_name


