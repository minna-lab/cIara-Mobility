
SELECT
    id_vehicule,
    marque,
    modele,
    type_vehicule,
    autonomie_km,
    etat,
    ville
FROM vehicule
ORDER BY autonomie_km DESC, marque, modele;
