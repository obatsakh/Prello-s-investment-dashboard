select 
municipality_code,
rental_med_house,
rental_med_all,

from {{ ref('stg_Prello__real_estate_info_by_municipality') }}