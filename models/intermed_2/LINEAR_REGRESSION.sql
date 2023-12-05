{{ config(materialized='table')}}

SELECT 
    municipality_code, 
    unemployment_rate, 
    popu_growth, 
    avg_salary, 
    vacants_housing_rate, 
    intensite_tension_immo, 
    avg_price_m2
FROM {{ref('linear_regression_4')}}
JOIN {{ref('inter_notary')}}
USING (municipality_code)
ORDER BY avg_salary 