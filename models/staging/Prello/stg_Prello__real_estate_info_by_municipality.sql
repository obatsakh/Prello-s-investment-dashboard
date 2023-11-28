with 

source as (

    select * from {{ source('Prello', 'real_estate_info_by_municipality') }}

),

renamed as (

    select
        municipality_code,
        intensite_tension_immo,
        rental_max_apartment,
        rental_min_apartment,
        rental_med_house,
        rental_max_house,
        rental_min_house,
        rental_med_all,
        rental_max_all,
        rental_min_all

    from source

)

select * from renamed
