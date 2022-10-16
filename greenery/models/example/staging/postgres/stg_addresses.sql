{{
  config(
    materialized='table'
  )
}}

SELECT 
    address_id,
    address as users_address,
    zipcode as users_zipcode,
    state as users_state,
    country as users_country
FROM {{ source('postgres', 'addresses') }}