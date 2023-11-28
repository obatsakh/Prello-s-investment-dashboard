with 

source as (

    select * from {{ source('Prello', 'geo_loc') }}

),

renamed as (

    select
        municipality_code,
        city_name,
        city_name_normalized,
        municipality_type,
        latitude,
        longitude,
        department_code,
        epci_code,
        country_code,
        department_name

    from source

)

select * from renamed
