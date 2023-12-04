SELECT municipality_code, round(vacants_housing_rate, 2) as vacants_housing_rate, intensite_tension_immo
FROM {{ref('stg_Prello__housing_stock')}}
JOIN {{ref('stg_Prello__real_estate_info_by_municipality')}}
USING (municipality_code)
WHERE year = 2018