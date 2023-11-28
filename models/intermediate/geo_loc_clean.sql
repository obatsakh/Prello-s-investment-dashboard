
    select
        municipality_code,
        city_name_normalized,
        latitude,
        longitude,
        department_code,
        department_name
from {{ ref('stg_Prello__geo_loc') }}
