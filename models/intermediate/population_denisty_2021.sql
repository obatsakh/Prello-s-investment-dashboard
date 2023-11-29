SELECT 
    annee_publication as year, 
    nom_departement as department_name, 
    densite_de_population_au_km2 as density_population_km2, 
FROM {{ref('stg_Prello__Housing')}}
WHERE annee_publication = 2021  