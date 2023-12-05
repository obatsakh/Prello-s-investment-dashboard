with 

source as (

    select * from {{ source('Prello', 'unemployment_rate') }}

),

renamed as (

    select
        codgeo,
        nb_atifs,
        nb_actifs_salari__s,
        nb_actifs_non_salari__s,
        unemployment_rate

    from source

)

select * from renamed
