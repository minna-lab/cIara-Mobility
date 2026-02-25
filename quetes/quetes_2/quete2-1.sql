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

-- prend id vehicule, marque, modele, type_vehicule, autonomie_km, etat et ville depuis la table vehicule
-- ordonne par autonomie (en km) drécroi, et marque + modele alphabétique
