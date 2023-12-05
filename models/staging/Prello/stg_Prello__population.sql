with 

source as (

    select * from {{ source('Prello', 'population') }}

),

renamed as (

    select
        municipality_code,
        year,
        population,
        country_code

    from source

)

select * from renamed
