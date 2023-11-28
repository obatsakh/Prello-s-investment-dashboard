select commune,

count(commune) as nb_of_station

from {{ ref('train_station_traveler_only') }}
group by commune
order by nb_of_station desc