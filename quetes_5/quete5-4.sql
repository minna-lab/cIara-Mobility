SELECT
    v.id_vehicule,
    v.marque,
    v.modele,
    v.type_vehicule,
    v.autonomie_km,
    v.ville,
    v.etat
FROM vehicule AS v
LEFT JOIN location AS l ON l.id_vehicule = v.id_vehicule
WHERE l.id_location IS NULL
ORDER BY v.marque, v.modele, v.id_vehicule

-- prend id vehicule, marque, modele, type_vehicule, autonomie_km, ville etat de la table vehicule
-- joint avec la table location pour trouver les véhicules qui n'ont jamais été loués
-- filtre les véhicules qui n'ont jamais été loués
-- trie par marque, modele et id_vehicule