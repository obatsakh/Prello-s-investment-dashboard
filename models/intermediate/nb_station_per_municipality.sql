select commune,
count (commune) as nb_station
from {{ ref('stg_Prello__train_station') }}
where voyageurs = "O"
group by commune