{{ config(materialized='table') }}

with table_1 as (select 
    department_name,
    municipality_code,
    ROUND((safe_divide((rental_med_all*12),avg_price_m2)*100),2) as avg_yield, 
    round(avg_price_m2,2) as avg_price_m2
from {{ref('join_real_estate_notary')}}
join {{ref('geo_loc_clean')}}
USING (municipality_code))

Select 
    department_name, 
    round(avg(avg_yield),2) as avg_yield,
    round(avg(avg_price_m2),2) as avg_price_m2
from table_1
group by (department_name)
order by avg_yield asc
 
