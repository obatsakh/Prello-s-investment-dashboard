WITH department_stress_index as 
    (
        SELECT 
        count(municipality_code) as nb_municipalities, 
        ROUND(avg(intensite_tension_immo),2) as avg_stress_index_per_department, 
        department_name
    FROM {{ref('stg_Prello__real_estate_info_by_municipality')}}
    JOIN {{ref('geo_loc_clean')}}
    USING (municipality_code)
    group by department_name
    ),

inter_risk_table as 
(
        SELECT 
        department_name, 
        avg_stress_index_per_department,
        empty_housing_rate,
        unemployment_rate,
        pauverty_rate
    FROM department_stress_index
    JOIN {{ref('inter_housing_table_2021')}}
    USING (department_name)
)

SELECT *
FROM {{ref('inter_population_growth_2018_2021')}}
JOIN inter_risk_table
USING (department_name)