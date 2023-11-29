select
department_name,
count (city_name_normalized) as nb_municipality,
sum(nb_station) as nb_station
from {{ ref('geo_station') }}
group by department_name
order by nb_station desc