SELECT
    id_vehicule,
    marque,
    modele,
    type_vehicule,
    autonomie_km,
    ville
FROM vehicule
WHERE etat = 'disponible'
ORDER BY ville, marque, modele;

-- prend id vehicule, marque, modele, type_vehicule, autonomie_km et ville depuis table vehicule
-- filtre vehicule dispo
-- ordonne par ville, marque et modele en alphabetique