SELECT 
  municipality_code, 
  year, 
  sum(nb_principal_home) as total_nb_principal_home, 
  sum(nb_second_home) as total_nb_second_home, 
  sum(nb_vacants_housing) as total_nb_vanats_housing
FROM {{ref('stg_Prello__housing_stock')}}
WHERE year BETWEEN 2016 AND 2021 
GROUP BY municipality_code, year 
ORDER BY year asc