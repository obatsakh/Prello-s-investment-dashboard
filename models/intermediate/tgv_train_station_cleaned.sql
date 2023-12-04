select
d__partement,
rg,
gare,
longitude,
latitude,
wgs_84,
from {{ ref('stg_Prello__tgv_train_station') }}
