
-- Afficher la station de départ et d’arrivée
SELECT
    location.id_location,
    depart.nom AS station_depart,
    arrivee.nom AS station_arrivee
FROM location
JOIN station AS depart
ON location.id_station_depart = depart.id_station
JOIN station AS arrivee
ON location.id_station_arrivee = arrivee.id_station;
