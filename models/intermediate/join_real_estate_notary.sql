SELECT *
FROM {{ref('real_estate_info_clean')}}
JOIN {{ref('inter_notary'}} 
USING (municipality_code)