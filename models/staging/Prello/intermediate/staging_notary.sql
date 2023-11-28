SELECT 
    municipality_code,
    EXTRACT(year from CAST(sales_date as date)) as sales_dates,
    avg(sales_amount) as avg_sales_amount,
    avg(sales_price_m2) as avg_price_m2
from {{ref('stg_Prello__notary')}}
Group by municipality_code, sales_dates