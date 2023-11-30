with first_table as (Select municipality_code, rental_med_all, department_name
FROM {{ref('real_estate_info_clean')}}
JOIN {{ref('geo_loc_clean')}}
USING (municipality_code))

SELECT 
    count(municipality_code) as nb_municipality_code, 
    ROUND(avg(rental_med_all),2) as rental_mid_all,
    department_name
FROM first_table 
group by (department_name)