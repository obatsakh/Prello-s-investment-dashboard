SELECT 
    department_name, 
    ROUND(SAFE_DIVIDE((density_population_km2_2018 - density_population_km2_2021),density_population_km2_2018)*100,2) as population_growth
FROM {{ref('population_denisty_2018')}}
join {{ref('population_denisty_2021')}}
USING (department_name)