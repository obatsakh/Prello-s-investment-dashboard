with 

source as (

    select * from {{ source('Prello', 'trainstation_cat') }}

),

renamed as (

    select
        departement,
        cat,
        nb_station_cat

    from source

)

select * from renamed
