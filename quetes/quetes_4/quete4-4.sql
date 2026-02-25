SELECT
    c.id_client,
    c.nom,
    c.prenom,
    COUNT(l.id_location) AS nb_locations
FROM client   AS c
LEFT JOIN location AS l ON l.id_client = c.id_client
GROUP BY c.id_client, c.nom, c.prenom
ORDER BY nb_locations DESC, c.nom, c.prenom;

-- prend id client, nom, prenom et compte le nombre de locations associées à chaque client depuis les tables client et location
-- groupe par id client, nom et prenom
-- ordonne par nombre de locations décroissant, puis nom et prenom en alphabetique