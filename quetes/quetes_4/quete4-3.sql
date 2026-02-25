SELECT AVG(autonomie_km)::NUMERIC(10,2) AS autonomie_moyenne_km
FROM vehicule;

-- prend moyenne de autonomie_km depuis la table vehicule et renomme en "autonomie_moyenne_km" avec 2 chiffres après la virgule
