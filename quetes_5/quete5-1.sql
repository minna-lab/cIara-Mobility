SELECT
    id_vehicule,
    marque,
    modele,
    type_vehicule,
    autonomie_km,
    ville,
    etat
FROM vehicule
WHERE etat = 'disponible'
ORDER BY autonomie_km DESC, marque, modele
LIMIT 3;

-- prend id vehicule, marque, modele, type_vehicule, autonomie_km, ville etat de la table vehicule
-- filtre les véhicules disponibles
-- trie par autonomie_km décroissante, puis par marque et modele
-- prend que les 3 premiers