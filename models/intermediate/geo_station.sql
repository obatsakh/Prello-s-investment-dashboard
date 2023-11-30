select geo.municipality_code,
geo.city_name_normalized,
department_name,
station.nb_station
from {{ ref('geo_loc_clean') }} as geo
join {{ ref('nb_station_per_municipality') }} as station
on geo.city_name_normalized = station.commune