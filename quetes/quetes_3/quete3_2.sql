SELECT
    location.id_location,
    vehicule.marque,
    vehicule.modele
FROM location
JOIN vehicule
ON location.id_vehicule = vehicule.id_vehicule;
