WITH table_1 as (SELECT CAST(codgeo as STRING) as municipality_code, ROUND(unemployment_rate,2) as unemployment_rate, nb_atifs, nb_actifs_salari__s, nb_actifs_non_salari__s
FROM {{ref('stg_Prello__unemployment_rate')}}
WHERE unemployment_rate is not null)

SELECT *
FROM table_1
JOIN {{ref('linear_regression_3')}}
USING (municipality_code)
WHERE avg_salary is not null 