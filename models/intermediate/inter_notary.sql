with table_1 as (SELECT 
    municipality_code,
    EXTRACT(year from CAST(sales_date as date)) as sales_dates,
    ROUND(avg(sales_amount),2) as avg_sales_amount,
    ROUND(avg(sales_price_m2),2) as avg_price_m2
from {{ref('stg_Prello__notary')}}
Group by municipality_code, sales_dates) 

Select *
FROM table_1
where sales_dates = 2021