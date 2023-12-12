with nb_tgv_dpt as (
    select
        s.department_name,
        count(gare) as nb_tgv,
        ROUND (AVG(s.nb_station),1) as nb_station,

    from {{ ref('nb_station_and_muni_per_dpt') }} s
    left join {{ ref('tgv_train_station_cleaned') }} t
    on s.department_name = t.d__partement
    GROUP BY department_name
)
select 
    department_name,

    nb_station,
case
    when nb_tgv = 0 then null
    else nb_tgv
end as nb_tgv

from nb_tgv_dpt