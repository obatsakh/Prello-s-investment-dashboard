WITH rent_sale as (SELECT *
FROM {{ref('real_estate_info_clean')}}
JOIN {{ref('staging_notary')}} 
USING (municipality_code))

SELECT *
FROM rent_sale
JOIN {{ref('staging_housing_stock')}}
USING(municipality_code)