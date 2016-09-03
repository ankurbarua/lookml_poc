- connection: redshift_eureka

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: customer_provisioning_fact
  label: 'Customer Provisioning'
  joins:
    - join: gtm_acct_attributes
      relationship: many_to_one
      sql_on: |
        ${customer_provisioning_fact.product_id} = ${gtm_acct_attributes.product_id}
        AND ${customer_provisioning_fact.source_customer_id} = ${gtm_acct_attributes.source_customer_id}
      type: left_outer
      
    - join: gtp_acct_attributes
      relationship: many_to_one
      sql_on: |
        ${customer_provisioning_fact.product_id} = ${gtp_acct_attributes.product_id}
        AND ${customer_provisioning_fact.source_customer_id} = ${gtp_acct_attributes.source_customer_id}
      type: left_outer
      
    - join: openvoice_acct_attributes
      relationship: many_to_one
      sql_on: |
        ${customer_provisioning_fact.product_id} = ${openvoice_acct_attributes.product_id}
        AND ${customer_provisioning_fact.source_customer_id} = ${openvoice_acct_attributes.source_customer_id}
      type: left_outer
      
    - join: product_dim
      relationship: many_to_one
      sql_on: ${customer_provisioning_fact.product_id} = ${product_dim.product_id}
      type: inner
      
    - join: source_customer_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${customer_provisioning_fact.source_customer_id} = ${source_customer_dim.source_customer_id}
      
    - join: user_provisioning_fact
      relationship: many_to_one
      sql_on: |
        ${customer_provisioning_fact.product_id} = ${user_provisioning_fact.product_id}
        AND ${customer_provisioning_fact.source_customer_id} = ${user_provisioning_fact.source_customer_id}
      type: left_outer
      
    - join: source_user_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${source_user_dim.source_user_id} = ${user_provisioning_fact.source_user_id}
      
    - join: date_dim
      type: inner
      relationship: many_to_one
      sql_on: ${customer_provisioning_fact.provisioning_date_id} = ${date_dim.date_id}
      
- explore: user_provisioning_fact
  label: 'User Provisioning'
  joins:
    - join: gtm_acct_attributes
      relationship: many_to_one
      sql_on: |
        ${user_provisioning_fact.product_id} = ${gtm_acct_attributes.product_id}
        AND ${user_provisioning_fact.source_customer_id} = ${gtm_acct_attributes.source_customer_id}
      type: left_outer
      
    - join: gtp_acct_attributes
      relationship: many_to_one
      sql_on: |
        ${user_provisioning_fact.product_id} = ${gtp_acct_attributes.product_id}
        AND ${user_provisioning_fact.source_customer_id} = ${gtp_acct_attributes.source_customer_id}
      type: left_outer
      
    - join: openvoice_acct_attributes
      relationship: many_to_one
      sql_on: |
        ${user_provisioning_fact.product_id} = ${openvoice_acct_attributes.product_id}
        AND ${user_provisioning_fact.source_customer_id} = ${openvoice_acct_attributes.source_customer_id}
      type: left_outer
      
    - join: product_dim
      relationship: many_to_one
      sql_on: ${user_provisioning_fact.product_id} = ${product_dim.product_id}
      type: inner
      
    - join: source_customer_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${user_provisioning_fact.source_customer_id} = ${source_customer_dim.source_customer_id}
      
    - join: source_user_dim
      type: left_outer
      relationship: many_to_one
      sql_on: ${user_provisioning_fact.source_user_id} = ${source_user_dim.source_user_id}
      
    - join: date_dim
      type: inner
      relationship: many_to_one
      sql_on: ${user_provisioning_fact.user_provisioning_id} = ${date_dim.date_id}