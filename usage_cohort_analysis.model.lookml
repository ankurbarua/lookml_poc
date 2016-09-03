- connection: z_looker_redshift

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: base_estimated_revenue_fact
  label: 'Revenue Reporting'
  joins:
    - join: customer
      relationship: many_to_one
      sql_on: ${base_estimated_revenue_fact.customerkey} = ${customer.customerkey}
      type: left_outer
      
    - join: product
      relationship: many_to_one 
      sql_on: ${base_estimated_revenue_fact.productkey} = ${product.productkey}
      type: left_outer
    
    - join: collab_usage_summary
      relationship: one_to_many
      sql_on: |
        ${base_estimated_revenue_fact.customerkey} = ${collab_usage_summary.customerkey}
        AND ${base_estimated_revenue_fact.productkey} = ${collab_usage_summary.product_key}
        AND ${base_estimated_revenue_fact.reporting_month_month} = ${collab_usage_summary.session_month}
      type: left_outer

- explore: collab_usage_summary
  joins:
    - join: customer
      relationship: many_to_one
      sql_on: collab_usage_summary.customerkey = customers_dim.customerkey
      
    - join: product
      relationship: many_to_one 
      sql_on: collab_usage_summary.productkey = products_dim.productkey
      
- explore: revenue_usage_derived_fact
  joins:
    - join: customer
      relationship: many_to_one
      sql_on: revenue_usage_derived_fact.customerkey = customers_dim.customerkey
    - join: product
      relationship: many_to_one 
      sql_on: revenue_usage_derived_fact.productkey = products_dim.productkey
      
- explore: customer

- explore: product #Commented by TK

