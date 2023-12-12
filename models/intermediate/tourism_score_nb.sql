select department_name,
score,
nb_sites_dpt,
from {{ ref('stg_Prello__tourism_scoring') }} s
join {{ ref('nb_sites_per_dpt') }} n
using (department_name)