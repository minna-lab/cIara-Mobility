SELECT
    c.id_client,
    c.nom,
    c.prenom,
    COUNT(l.id_location) AS nb_locations
FROM client   AS c
LEFT JOIN location AS l ON l.id_client = c.id_client
GROUP BY c.id_client, c.nom, c.prenom
ORDER BY nb_locations DESC, c.nom, c.prenom;
