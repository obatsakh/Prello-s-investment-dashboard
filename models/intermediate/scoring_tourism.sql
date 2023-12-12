select
department_name,
avg (std) as std,
avg (nb_sites_dpt) as nb_sites_dpt,
round (avg ((nb_sites_dpt*nb_sites_dpt) / std),3) as score
from {{ ref('tourist_sites_type_diversity') }} d
join {{ ref('nb_sites_per_dpt') }} n
Using (department_name)
group by department_name
order by score desc