SELECT
    ville,
    COUNT(*) AS nb_vehicules_disponibles
FROM vehicule
WHERE etat = 'disponible'
GROUP BY ville
ORDER BY nb_vehicules_disponibles DESC, ville
LIMIT 1;

-- prend ville et nombre de véhicules disponibles de la table vehicule
-- filtre les véhicules disponibles
-- groupe par ville
-- trie par nombre de véhicules disponibles décroissant, puis par ville
-- prend que la première ligne
