# 1 HOW MANY USERS DO WE HAVE

SELECT count(DISTINCT user_id) AS user_count
  FROM dev_db.dbt_hamzattiamiyu.stg_users;
  
 # On average, how many orders do we receive per hour?
 
 SELECT AVG(total_order_hourly)
FROM 
(
  SELECT DATE_TRUNC('hour', created_at)
  , COUNT(DISTINCT order_id) total_order_hourly
  FROM dev_db.dbt_hamzattiamiyu.stg_orders
  GROUP BY 1
) a
 


