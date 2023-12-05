with 

source as (

    select * from {{ source('Prello', 'trainstation_cat') }}

),

renamed as (

    select
        nom_de_la_gare,
        code_uic,
        code_postal,
        segmentation_drg,
        total_voyageurs_2022,
        total_voyageurs___non_voyageurs_2022,
        total_voyageurs_2021,
        total_voyageurs___non_voyageurs_2021,
        total_voyageurs_2020,
        total_voyageurs___non_voyageurs_2020,
        total_voyageurs_2019,
        total_voyageurs___non_voyageurs_2019,
        total_voyageurs_2018,
        total_voyageurs___non_voyageurs_2018,
        total_voyageurs_2017,
        total_voyageurs___non_voyageurs_2017,
        total_voyageurs_2016,
        total_voyageurs___non_voyageurs_2016,
        total_voyageurs_2015,
        total_voyageurs___non_voyageurs_2015

    from source

)

select * from renamed
