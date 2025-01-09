-- Sprawdzenie czy klucze główne są unikatowe
SELECT sk_account_id, COUNT(*) AS count
FROM {{ ref('dim_account') }}
GROUP BY sk_account_id
HAVING count > 1