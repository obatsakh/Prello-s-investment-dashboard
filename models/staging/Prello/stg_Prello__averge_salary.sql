with 

source as (

    select * from {{ source('Prello', 'averge_salary') }}

),

renamed as (

    select
        municipality_code,
        avg_net_salary,
        year,
        country_code

    from source

)

select * from renamed
