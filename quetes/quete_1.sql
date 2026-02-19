-- QUÊTE 1 — Découverte du SQL
-- SELECT / FROM / WHERE

-- 1) Afficher tous les véhicules
SELECT * FROM vehicule;

-- 2) Afficher uniquement les véhicules disponibles
SELECT * FROM vehicule
WHERE etat = 'Disponible';

-- 3) Afficher les véhicules situés dans une ville donnée
-- Remplace 'Paris' si besoin par une ville existante
SELECT * FROM vehicule
WHERE ville = 'Paris';

-- 4) Afficher les véhicules ayant une autonomie supérieure à 400 km
SELECT * FROM vehicule
WHERE autonomie_km > 400;
