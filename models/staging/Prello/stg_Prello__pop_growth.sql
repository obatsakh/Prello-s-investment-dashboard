with 

source as (

    select * from {{ source('Prello', 'pop_growth') }}

),

renamed as (

    select
        codgeo,
        popu_growth_2020_2010

    from source

)

select * from renamed
