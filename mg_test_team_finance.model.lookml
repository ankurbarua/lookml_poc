- connection: persist_redshift

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: base_estimated_revenue_fact
  joins:
    - join: customers_dim
      relationship: many_to_one
      sql_on: base_estimated_revenue_fact.customerkey = customers_dim.customerkey
      
    - join: products_dim
      relationship: many_to_one 
      sql_on: base_estimated_revenue_fact.productkey = products_dim.productkey


- explore: collab_usage_summary
  joins:
    - join: customers_dim
      relationship: many_to_one
      sql_on: collab_usage_summary.customerkey = customers_dim.customerkey
      
    - join: products_dim
      relationship: many_to_one 
      sql_on: collab_usage_summary.product_key = products_dim.productkey
      
    - join: base_estimated_revenue_fact
      relationship: one_to_many
      sql_on: ${base_estimated_revenue_fact.base_est_revenue_raw} = ${collab_usage_summary.session_date_raw}

- explore: customers_dim

- explore: products_dim #testcomment

