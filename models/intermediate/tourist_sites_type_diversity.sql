with poi_sites_types as ( 
    select 
        geo.department_name,
        sites.poi_type,
        count(sites.poi_type) as nb_per_type,
    from {{ ref('poi_sites_types') }} as sites
    join {{ ref('geo_loc_clean') }} as geo 
        using (municipality_code)
        group by department_name, poi_type),

 total_poi_type as 
(
    select
        department_name,
        sum(nb_per_type) as total_poi_type_department
    from poi_sites_types
     group by department_name
),
total_poi_type_rate as (
        select 
            p.department_name,
            p.poi_type,
            ROUND (SAFE_DIVIDE(p.nb_per_type,t.total_poi_type_department),2) as poi_type_rate,
        FROM poi_sites_types p
        left join total_poi_type t
        using(department_name)
        order by department_name)

 select
    department_name,
    poi_type,
    poi_type_rate,
    stddev (poi_type_rate) over (partition by department_name) as std

from total_poi_type_rate