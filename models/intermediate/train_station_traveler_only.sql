select 
commune,
departemen,
x_l93,
y_l93,
x_wgs84,
y_wgs84,
c_geo,
geo_point_2d,
geo_shape

from {{ ref('stg_Prello__train_station') }}

where voyageurs = "O"