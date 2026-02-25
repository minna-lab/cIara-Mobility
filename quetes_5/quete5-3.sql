SELECT
    c.id_client,
    c.nom,
    c.prenom,
    COUNT(l.id_location) AS nb_locations
FROM client   AS c
JOIN location AS l ON l.id_client = c.id_client
GROUP BY c.id_client, c.nom, c.prenom
HAVING COUNT(l.id_location) >= 2
ORDER BY nb_locations DESC, c.nom, c.prenom;

-- prend id_client, nom, prenom et nombre de locations de la table client
-- joint avec la table location pour compter le nombre de locations par client
-- groupe par id_client, nom et prenom
-- filtre les clients avec au moins 2 locations
-- trie par nombre de locations décroissant, puis par nom et prenom