with 

source as (

    select * from {{ source('Prello', 'train_station') }}

),

renamed as (

    select
        code_uic,
        libelle,
        fret,
        voyageurs,
        code_ligne,
        rg_troncon,
        pk,
        commune,
        departemen,
        idreseau,
        idgaia,
        x_l93,
        y_l93,
        x_wgs84,
        y_wgs84,
        c_geo,
        geo_point_2d,
        geo_shape

    from source

)

select * from renamed
