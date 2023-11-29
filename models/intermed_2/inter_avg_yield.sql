select safe_divide(avg_price_m2, rental_med_all) as avg_yield, *
from {{ref('join_real_estate_notary')}}
order by avg_price_m2, avg_yield asc