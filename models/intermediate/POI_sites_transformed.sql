select
municipality_code,
count(poi) as nb_sites
from {{ ref('stg_Prello__poi_sites') }}
group by municipality_code
