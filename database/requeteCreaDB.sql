
-- Création de la base cIara Mobility

-- Table vehicule
CREATE TABLE vehicule (
  id_vehicule      INT PRIMARY KEY,
  marque           VARCHAR(50) NOT NULL,
  modele           VARCHAR(80) NOT NULL,
  type_vehicule    VARCHAR(30) NOT NULL,
  autonomie_km     INT NOT NULL CHECK (autonomie_km >= 0),
  etat             VARCHAR(30) NOT NULL,
  ville            VARCHAR(50) NOT NULL,
  annee            INT NOT NULL CHECK (annee BETWEEN 1990 AND 2100),
  immatriculation  VARCHAR(20) UNIQUE
);

-- Table station
CREATE TABLE station (
  id_station SERIAL PRIMARY KEY,
  nom        VARCHAR(100) NOT NULL,
  ville      VARCHAR(50) NOT NULL
);

-- Table client
CREATE TABLE client (
  id_client SERIAL PRIMARY KEY,
  nom       VARCHAR(80) NOT NULL,
  prenom    VARCHAR(80) NOT NULL,
  email     VARCHAR(120) UNIQUE NOT NULL
);

-- Table location
CREATE TABLE location (
  id_location        SERIAL PRIMARY KEY,
  date_debut         TIMESTAMP NOT NULL,
  date_fin           TIMESTAMP,
  id_client          INT NOT NULL REFERENCES client(id_client),
  id_vehicule        INT NOT NULL REFERENCES vehicule(id_vehicule),
  id_station_depart  INT NOT NULL REFERENCES station(id_station),
  id_station_arrivee INT NOT NULL REFERENCES station(id_station)
);

-- Table temporaire pour l'importation des données depuis le CSV
CREATE TABLE vehicule_import (
  id INT,
  marque VARCHAR(50),
  modele VARCHAR(80),
  annee INT,
  energie VARCHAR(30),
  autonomie_km INT,
  immatriculation VARCHAR(20),
  etat VARCHAR(30),
  localisation VARCHAR(50)
);
-- Importation des données depuis le fichier CSV
COPY vehicule_import
FROM '/Users/zayde/Downloads/vehicules_cIAra_2025.csv'
DELIMITER ','
CSV HEADER;

-- Insertion des données dans la table vehicule à partir de la table temporaire
INSERT INTO vehicule (id_vehicule, marque, modele, type_vehicule, autonomie_km, etat, ville, annee, immatriculation)
SELECT
  id,
  marque,
  modele,
  energie AS type_vehicule,
  autonomie_km,
  CASE
    WHEN etat = 'En service' THEN 'Disponible'
    ELSE etat
  END AS etat,
  localisation AS ville,
  annee,
  immatriculation
FROM vehicule_import;
