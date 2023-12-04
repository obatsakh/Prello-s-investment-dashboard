with nb_sites_per_dpt as
    (
        select
        department_name,
        sum (nb_sites) as nb_sites_dpt,
        count (municipality_code) as nb_municipality
    from {{ ref('nb_poi_transformed') }}
    group by department_name
    )

select
    department_name,
    nb_sites_dpt / sum(nb_sites_dpt) over() as sites_rate,
    nb_sites_dpt,
    nb_municipality
from nb_sites_per_dpt 
order by sites_rate desc