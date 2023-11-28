SELECT 
    municipality_code,
    ROUND(avg(sales_amount),2) as avg_sales_amount,
    ROUND(avg(sales_price_m2),2) as avg_price_m2
from {{ref('stg_Prello__notary')}}
Group by municipality_code