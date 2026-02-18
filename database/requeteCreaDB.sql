
CREATE TABLE vehicule (
    id_vehicule INTEGER PRIMARY KEY AUTOINCREMENT,
    marque TEXT NOT NULL,
    modele TEXT NOT NULL,
    type_vehicule TEXT NOT NULL,
    autonomie_km INTEGER NOT NULL,
    etat TEXT NOT NULL CHECK(etat IN ('Disponible', 'En location', 'En maintenance', 'Hors service')),
    ville TEXT NOT NULL
);

CREATE TABLE station (
    id_station INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    ville TEXT NOT NULL
);

CREATE TABLE client (
    id_client INTEGER PRIMARY KEY AUTOINCREMENT,
    nom TEXT NOT NULL,
    prenom TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE location (
    id_location INTEGER PRIMARY KEY AUTOINCREMENT,
    date_debut TEXT NOT NULL,
    date_fin TEXT NOT NULL,
    id_client INTEGER NOT NULL,
    id_vehicule INTEGER NOT NULL,
    id_station_depart INTEGER NOT NULL,
    id_station_arrivee INTEGER NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE,
    FOREIGN KEY (id_vehicule) REFERENCES vehicule(id_vehicule) ON DELETE CASCADE,
    FOREIGN KEY (id_station_depart) REFERENCES station(id_station) ON DELETE RESTRICT,
    FOREIGN KEY (id_station_arrivee) REFERENCES station(id_station) ON DELETE RESTRICT,
    CHECK(date_fin > date_debut)
);

CREATE INDEX idx_vehicule_ville ON vehicule(ville);
CREATE INDEX idx_vehicule_etat ON vehicule(etat);
CREATE INDEX idx_station_ville ON station(ville);
CREATE INDEX idx_location_client ON location(id_client);
CREATE INDEX idx_location_vehicule ON location(id_vehicule);
CREATE INDEX idx_location_dates ON location(date_debut, date_fin);
CREATE INDEX idx_client_email ON client(email);
