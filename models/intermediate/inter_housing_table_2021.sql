SELECT 
    annee_publication as year, 
    nom_departement as department_name,
    (nombre_de_logements - nombre_de_residences_principales) as nb_empty_housing,
    ROUND(SAFE_DIVIDE ((nombre_de_logements - nombre_de_residences_principales), nombre_de_logements ),2) as empty_housing_rate,
    taux_de_chomage_au_t4_en as unemployment_rate, 
    taux_de_pauvrete_en as pauverty_rate, 
    nombre_de_logements as nb_housing, 
    nombre_de_residences_principales as nb_primary_residance, 
FROM {{ref('stg_Prello__Housing')}}
WHERE annee_publication = 2021 
AND nom_departement IS NOT NULL 
AND nombre_de_logements is not null 
and nombre_de_residences_principales is not NULL
AND taux_de_pauvrete_en IS NOT NULL 
AND taux_de_chomage_au_t4_en IS NOT NULL