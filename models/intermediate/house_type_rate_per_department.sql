with home_type as (
select 
 geo.department_name, 
 housing_stock.principal_home_rate,
 housing_stock.secondary_home_rate
from {{ ref('stg_Prello__housing_stock') }} as housing_stock
join {{ ref('stg_Prello__geo_loc') }} as geo
on housing_stock.municipality_code = geo.municipality_code)

select 
department_name, 
ROUND (AVG (principal_home_rate),2) as rate_principal_home , 
ROUND (AVG (secondary_home_rate),2) as rate_second_home

from home_type
group by department_name