with 

source as (

    select * from {{ source('Prello', 'Housing') }}

),

renamed as (

    select
        annee_publication,
        code_departement,
        nom_departement,
        code_region,
        nom_region,
        nombre_d_habitants,
        densite_de_population_au_km2,
        variation_de_la_population_sur_10_ans_en,
        dont_contribution_du_solde_naturel_en,
        dont_contribution_du_solde_migratoire_en,
        population_de_moins_de_20_ans,
        population_de_60_ans_et_plus,
        taux_de_chomage_au_t4_en,
        taux_de_pauvrete_en,
        nombre_de_logements,
        nombre_de_residences_principales,
        taux_de_logements_sociaux_en,
        taux_de_logements_vacants_en,
        taux_de_logements_individuels_en,
        moyenne_annuelle_de_la_construction_neuve_sur_10_ans,
        construction,
        parc_social_nombre_de_logements,
        parc_social_logements_mis_en_location,
        parc_social_logements_demolis,
        parc_social_ventes_a_des_personnes_physiques,
        parc_social_taux_de_logements_vacants_en,
        parc_social_taux_de_logements_individuels_en,
        parc_social_loyer_moyen_en_eur_m2_mois,
        parc_social_age_moyen_du_parc_en_annees,
        parc_social_taux_de_logements_energivores_e_f_g_en,
        geom,
        geo_point_2d

    from source

)

select * from renamed
