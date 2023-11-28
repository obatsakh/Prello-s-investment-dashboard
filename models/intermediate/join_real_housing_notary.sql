SELECT *
FROM {{ref('real_estate_info_clean')}}
JOIN {{ref('staging_notary')}} 
USING (municipality_code)