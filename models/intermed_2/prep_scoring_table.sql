SELECT *
FROM {{ref('inter_population_growth_2018_2021')}}
JOIN {{ref('join_table_4_scoring')}}
USING (department_name)