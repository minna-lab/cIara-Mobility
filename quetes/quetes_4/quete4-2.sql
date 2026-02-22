SELECT
    ville,
    COUNT(*) AS nb_vehicules
FROM vehicule
GROUP BY ville
ORDER BY nb_vehicules DESC, ville;
