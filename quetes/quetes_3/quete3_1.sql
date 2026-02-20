
--Afficher les locations avec le nom du client

Version simple :
SELECT
    location.id_location,
    location.date_debut,
    location.date_fin,
    client.nom,
    client.prenom
FROM location
JOIN client
ON location.id_client = client.id_client;
