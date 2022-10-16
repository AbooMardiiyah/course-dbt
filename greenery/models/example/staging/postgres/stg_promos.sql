{{
  config(
    materialized='table'
  )
}}

SELECT 
    promo_id,
    status as promo_stat,
    discount as promo_discount
FROM {{ source('postgres', 'promos') }}