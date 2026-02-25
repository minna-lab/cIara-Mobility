SELECT
    ville,
    COUNT(*) AS nb_vehicules
FROM vehicule
GROUP BY ville
ORDER BY nb_vehicules DESC, ville;

-- prend ville et compte le nombre de vehicules dans chaque ville depuis la table vehicule et renomme en "nb_vehicules"
-- groupe par ville
-- ordonne par nombre de vehicules décroissant et ville en alphabetique