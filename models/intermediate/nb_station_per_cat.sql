select        
    departement,
    cat,
    sum (nb_station_cat) as nb_station_cat,

from {{ ref('stg_Prello__trainstation_cat') }}
where cat is not null and departement is not null and cat != "D"
group by departement, cat
order by departement