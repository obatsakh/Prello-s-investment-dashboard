SELECT *
FROM {{ref('POI_sites_transformed')}}
JOIN {{ref('poi_establishment-transformed')}}
USING (municipality_code)