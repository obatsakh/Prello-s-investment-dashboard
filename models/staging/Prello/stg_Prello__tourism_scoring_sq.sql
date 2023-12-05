with 

source as (

    select * from {{ source('Prello', 'tourism_scoring_sq') }}

),

renamed as (

    select
        int64_field_0,
        department_name,
        score

    from source

)

select * from renamed
