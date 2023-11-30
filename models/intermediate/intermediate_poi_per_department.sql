select 
    geo_loc.department_code
    ,geo_loc.department_name
    ,geo_loc.municipality_code
    ,poi_types.poi_type
from
{{ref('stg_Prello__geo_loc')}} as geo_loc
inner join {{ref('poi_sites_types')}} as poi_types
on geo_loc.municipality_code = poi_types.municipality_code