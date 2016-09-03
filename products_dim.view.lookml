- view: product
  sql_table_name: z_looker.products_dim
  fields:

  - dimension_group: etljobtimestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.etljobtimestamp

  - dimension: lineofbusiness
    type: string
    sql: ${TABLE}.lineofbusiness

  - dimension: offering
    type: string
    sql: ${TABLE}.offering

  - dimension: offeringcloud
    type: string
    sql: ${TABLE}.offeringcloud

  - dimension: productabbrev
    type: string
    sql: ${TABLE}.productabbrev

  - dimension: productcategory
    type: string
    sql: ${TABLE}.productcategory

  - dimension: productfullname
    type: string
    sql: ${TABLE}.productfullname

  - dimension: productkey
    type: number
    sql: ${TABLE}.productkey

  - dimension: producttier
    type: string
    sql: ${TABLE}.producttier

  - measure: count
    type: count
    drill_fields: [productfullname]

