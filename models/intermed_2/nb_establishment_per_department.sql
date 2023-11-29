select 
    department_name, 
    count(municipality_code) as nb_municipality_code, 
    sum(nb_establishment) as total_nb_establishment
from {{ref('poi_establishment-transformed')}}
JOIN {{ref('geo_loc_clean')}}
USING (municipality_code)
Group by department_name
order by total_nb_establishment asc