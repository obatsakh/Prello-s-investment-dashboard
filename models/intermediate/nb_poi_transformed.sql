select sites.municipality_code, nb_sites, department_name
from {{ ref("POI_sites_transformed") }} as sites
join
    {{ ref("stg_Prello__geo_loc") }} as geo
    on sites.municipality_code = geo.municipality_code
