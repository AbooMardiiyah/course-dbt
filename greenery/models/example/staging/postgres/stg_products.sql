{{
  config(
    materialized='table'
  )
}}

SELECT 
    product_id,
    name as prod_name,
    price as prod_price,
    inventory as prod_invent
FROM {{ source('postgres', 'products') }}