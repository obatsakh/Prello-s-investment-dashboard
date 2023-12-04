with 

source as (

    select * from {{ source('Prello', 'tgv_train_station') }}

),

renamed as (

    select
        int64_field_0,
        code_plate_forme,
        code_gare,
        code_uic,
        date_fin_validit___plateforme,
        intitul___plateforme,
        code_postal,
        code_commune,
        commune,
        code_d__partement,
        d__partement,
        longitude,
        latitude,
        segment_drg,
        niveau_de_service,
        rg,
        tvss,
        sops,
        gare,
        intitul___gare,
        intitul___fronton_de_gare,
        gare_drg,
        gare___trang__re,
        dtg,
        r__gion_sncf,
        unit___gare,
        ut,
        nbre_plateformes,
        tvs,
        wgs_84,
        verification_tgv

    from source

)

select * from renamed
