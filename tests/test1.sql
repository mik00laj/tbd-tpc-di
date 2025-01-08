-- Sprawdzenie czy klucz główny nie jest wartoscią NULL'ową
SELECT sk_customer_id
FROM {{ ref('dim_customer') }}
WHERE sk_account_id IS NULL
