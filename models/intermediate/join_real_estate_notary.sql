SELECT *
FROM {{ref('real_estate_info_clean')}}
JOIN {{ref('2021_notary')}} 
USING (municipality_code)