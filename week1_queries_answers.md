# 1 HOW MANY USERS DO WE HAVE
Answers: 130

SELECT count(DISTINCT user_id) AS user_count
  FROM dev_db.dbt_hamzattiamiyu.stg_users;
  
  
 # On average, how many orders do we receive per hour?
 Answers: 3.9days
 
 SELECT AVG(total_order_hourly)
FROM 
(
  SELECT DATE_TRUNC('hour', created_at)
  , COUNT(DISTINCT order_id) order_hourly
  FROM dev_db.dbt_hamzattiamiyu.stg_orders
  GROUP BY 1
) a
 


