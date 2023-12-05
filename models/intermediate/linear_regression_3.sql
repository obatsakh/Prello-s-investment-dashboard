WITH table_1 as (SELECT CAST(codgeo as STRING) as municipality_code, double_field_1 as popu_growth
FROM {{ref('stg_Prello__pop_growth')}})

SELECT *
FROM table_1
JOIN {{ref('inter_linear_reg_2')}}
USING (municipality_code)

