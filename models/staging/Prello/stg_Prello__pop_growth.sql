with 

source as (

    select * from {{ source('Prello', 'pop_growth') }}

),

renamed as (

    select
        codgeo,
        double_field_1

    from source

)

select * from renamed
