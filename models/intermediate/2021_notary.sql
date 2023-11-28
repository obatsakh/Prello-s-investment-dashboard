select *
FROM {{ref('staging_notary')}}
where sales_dates = 2021