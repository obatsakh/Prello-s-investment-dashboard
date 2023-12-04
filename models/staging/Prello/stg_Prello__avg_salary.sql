with 

source as (

    select * from {{ source('Prello', 'avg_salary') }}

),

renamed as (

    select
        codgeo,
        libgeo,
        med14

    from source

)

select * from renamed
