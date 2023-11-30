Select 
    department_name,
    count(municipality_code) as nb_municipality_code,
    ROUND(avg(avg_yield),2) as avg_yield, 
    round(avg(rental_med_all),2) as total_avg_rental, 
    round(avg(avg_price_m2),2) as total_average_price
FROM {{ref('inter_avg_yield')}}
join {{ref('geo_loc_clean')}}
USING (municipality_code)
group by department_name
order by avg_yield asc