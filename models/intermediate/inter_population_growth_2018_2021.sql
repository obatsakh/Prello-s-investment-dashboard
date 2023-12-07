with pop_2018 as 
    (
        SELECT 
            annee_publication as year, 
            nom_departement as department_name, 
            densite_de_population_au_km2 as density_population_km2_2018, 
        FROM {{ref('stg_Prello__Housing')}}
        WHERE annee_publication = 2018
    ), 

pop_2021 as 
    (
        SELECT 
            annee_publication as year, 
            nom_departement as department_name, 
            densite_de_population_au_km2 as density_population_km2_2021, 
        FROM {{ref('stg_Prello__Housing')}}
        WHERE annee_publication = 2021
    )

SELECT 
    department_name, 
    ROUND(SAFE_DIVIDE((density_population_km2_2018 - density_population_km2_2021),density_population_km2_2018)*100,2) as population_growth
FROM pop_2018
join pop_2021
USING (department_name)