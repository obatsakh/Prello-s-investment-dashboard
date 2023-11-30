WITH department as (SELECT 
    count(municipality_code) as nb_municipalities, 
    ROUND(avg(intensite_tension_immo),2) as avg_stress_index_per_department, 
    department_name
FROM {{ref('stg_Prello__real_estate_info_by_municipality')}}
JOIN {{ref('geo_loc_clean')}}
USING (municipality_code)
group by department_name)

SELECT 
    department_name, 
    avg_stress_index_per_department,
    empty_housing_rate,
    unemployment_rate,
    pauverty_rate
FROM department
JOIN {{ref('inter_housing_table_2021')}}
USING (department_name)
