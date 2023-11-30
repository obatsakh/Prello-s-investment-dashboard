select
department_name,
sum (nb_sites) as nb_sites_dpt,
count (municipality_code) as nb_municipality
from {{ ref('nb_poi_transformed') }}
group by department_name