WITH table_1 as (select CAST (codgeo as STRING) as municipality_code, med14 as avg_salary 
from {{ref('stg_Prello__avg_salary')}}) 

SELECT *
FROM table_1 
JOIN {{ref('inter_linear_table')}} 
USING (municipality_code)

