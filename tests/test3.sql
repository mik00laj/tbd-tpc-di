-- Sprawdzenie czy wartości tax są większe lub równe zero
SELECT *
FROM {{ ref('trades') }} 
WHERE tax < 0  