
select
municipality_code,
count(poi) as nb_establishment
from {{ ref('stg_Prello__poi_establishments') }}
group by municipality_code