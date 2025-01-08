-- Sprawdzenie czy sk_customer_id jest unikatowy
SELECT 
  sk_customer_id, 
  count(*) cnt
FROM {{ ref('fact_cash_balances') }} 
GROUP BY sk_customer_id
HAVING cnt > 1