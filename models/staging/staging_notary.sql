Select municipality_code, sales_amount, sales_price_m2, sales_date, nom_commune, premise_type, surface, number_of_principal_rooms
from {{ source('Prello', 'notary') }}