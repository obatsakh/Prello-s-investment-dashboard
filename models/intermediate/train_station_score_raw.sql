with cat_score as (select        
    departement,
    cat,
    nb_station_cat,
    case
        when cat = "A" then nb_station_cat*0.5
        when cat = "B" then nb_station_cat*0.3
        when cat = "C" then nb_station_cat*0.2
        when departement = "Haut-Rhin" and cat is null then nb_station_cat*0.3
        when departement = "Seine-Saint-Denis" and cat is null then nb_station_cat*0.3
        when departement = "Essonne" and cat is null then nb_station_cat*0.3
        when departement = "Yvelines" and cat is null then nb_station_cat*0.2
    end as score_raw
from {{ ref('stg_Prello__trainstation_cat') }}
order by score_raw)

select 
departement,
sum (score_raw) as score_raw,
sum (nb_station_cat) as nb_station_cat
from cat_score
group by departement
order by score_raw desc