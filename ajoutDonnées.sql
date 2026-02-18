
INSERT INTO station (nom, ville) VALUES 
('Gare Centrale', 'Paris'),
('Place de la République', 'Paris'),
('Quartier Latin', 'Paris'),
('Montmartre', 'Paris'),
('La Défense', 'Paris'),
('Gare Part-Dieu', 'Lyon'),
('Bellecour', 'Lyon'),
('Vieux Lyon', 'Lyon'),
('Confluence', 'Lyon'),
('Gare Saint-Charles', 'Marseille'),
('Vieux Port', 'Marseille'),
('Castellane', 'Marseille'),
('Prado', 'Marseille'),
('Place du Capitole', 'Toulouse'),
('Jean Jaurès', 'Toulouse'),
('Esquirol', 'Toulouse'),
('Gare de Bordeaux', 'Bordeaux'),
('Place de la Bourse', 'Bordeaux'),
('Victoire', 'Bordeaux');

-- ca c'est des vehicule a paris
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Renault', 'Zoe', 'Voiture électrique', 395, 'Disponible', 'Paris'),
('Peugeot', '2008', 'Voiture thermique', 340, 'Disponible', 'Paris'),
('Tesla', 'Model 3', 'Voiture électrique', 491, 'En location', 'Paris'),
('Citroën', 'C4', 'Voiture thermique', 357, 'Disponible', 'Paris'),
('BMW', 'i3', 'Voiture électrique', 260, 'En maintenance', 'Paris'),
('Renault', 'Kangoo', 'voiture thermique', 270, 'Disponible', 'Paris');

-- ca c'est des vehicule a lyon
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Renault', 'Twingo', 'Voiture thermique', 190, 'Disponible', 'Lyon'),
('Nissan', 'Leaf', 'Voiture électrique', 385, 'Disponible', 'Lyon'),
('Volkswagen', 'ID.3', 'Voiture électrique', 425, 'En location', 'Lyon'),
('audi', 'R8', 'Voiture thermique', 330, 'Disponible', 'Lyon'),
('Citroën', 'Berlingo', 'Voiture thermique', 300, 'Disponible', 'Lyon');

-- ca c'est des vehicule a marseille
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Fiat', '500', 'Voiture thermique', 320, 'Disponible', 'Marseille'),
('Hyundai', 'Kona Electric', 'Voiture électrique', 484, 'Disponible', 'Marseille'),

-- ajoute vehicule a toulouse
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Dacia', 'Duster', 'Voiture thermique', 230, 'Disponible', 'Toulouse'),
('MG', 'ZS EV', 'Voiture électrique', 440, 'Disponible', 'Toulouse');

-- et vehicule a bordeaux
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Opel', 'Corsa-e', 'Voiture électrique', 337, 'Disponible', 'Bordeaux'),
('Ford', 'Focus', 'Voiture thermique', 400, 'Disponible', 'Bordeaux'),
('BMW', 'iX3', 'Voiture électrique', 460, 'Disponible', 'Bordeaux'),
('Renault', 'Captur', 'Voiture thermique', 300, 'Disponible', 'Bordeaux');

INSERT INTO client (nom, prenom, email) VALUES 
('Dupont', 'Marie', 'marie.dupont@email.fr'),
('Martin', 'Thomas', 'thomas.martin@email.fr'),
('Bernard', 'Sophie', 'sophie.bernard@email.fr'),
('Dubois', 'Lucas', 'lucas.dubois@email.fr'),
('Mercier', 'Emma', 'emma.mercier@email.fr'),
('Petit', 'Alexandre', 'alexandre.petit@email.fr'),
('Robert', 'Léa', 'lea.robert@email.fr'),
('Richard', 'Hugo', 'hugo.richard@email.fr'),
('Simon', 'Chloé', 'chloe.simon@email.fr'),
('Laurent', 'Nathan', 'nathan.laurent@email.fr'),
('Lefebvre', 'Camille', 'camille.lefebvre@email.fr'),
('Michel', 'Jules', 'jules.michel@email.fr'),
('Garcia', 'Manon', 'manon.garcia@email.fr'),
('David', 'Louis', 'louis.david@email.fr'),
('Bertrand', 'Inès', 'ines.bertrand@email.fr'),
('Roux', 'Gabriel', 'gabriel.roux@email.fr'),
('Moreau', 'Alice', 'alice.moreau@email.fr'),
('Fournier', 'Arthur', 'arthur.fournier@email.fr'),
('Girard', 'Sarah', 'sarah.girard@email.fr'),
('Bonnet', 'Raphaël', 'raphael.bonnet@email.fr');


INSERT INTO location (date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) VALUES 
-- Paris
('2026-01-15 08:30:00', '2026-01-15 09:15:00', 1, 1, 1, 2),
('2026-01-20 14:00:00', '2026-01-20 14:25:00', 2, 6, 2, 3),
('2026-02-01 10:00:00', '2026-02-01 18:30:00', 3, 2, 1, 4),
('2026-02-05 07:45:00', '2026-02-05 08:30:00', 4, 7, 3, 5),
('2026-02-10 16:00:00', '2026-02-10 16:20:00', 5, 8, 4, 2),
('2026-02-12 12:00:00', '2026-02-12 13:45:00', 6, 10, 2, 5),

-- Lyon
('2026-01-18 09:00:00', '2026-01-18 17:00:00', 7, 12, 6, 7),
('2026-02-03 08:15:00', '2026-02-03 08:40:00', 8, 15, 7, 8),
('2026-02-08 11:30:00', '2026-02-08 12:00:00', 9, 16, 6, 9),
('2026-02-11 15:00:00', '2026-02-11 19:30:00', 10, 13, 8, 6),

-- Marseille
('2026-01-22 10:30:00', '2026-01-22 18:00:00', 11, 19, 10, 11),
('2026-02-04 14:30:00', '2026-02-04 15:00:00', 12, 22, 11, 12),
('2026-02-09 09:00:00', '2026-02-09 09:35:00', 13, 23, 12, 13),

-- Toulouse
('2026-01-25 08:00:00', '2026-01-25 12:00:00', 14, 25, 14, 15),
('2026-02-06 16:30:00', '2026-02-06 17:10:00', 15, 27, 15, 16),

-- Bordeaux
('2026-01-28 11:00:00', '2026-01-28 15:00:00', 16, 30, 17, 18),
('2026-02-07 13:00:00', '2026-02-07 13:25:00', 17, 32, 18, 19);

-- Locations en cours
INSERT INTO location (date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) VALUES 
('2026-02-18 08:00:00', '2026-02-18 20:00:00', 18, 3, 1, 3),
('2026-02-18 09:30:00', '2026-02-18 10:00:00', 19, 9, 4, 1),
('2026-02-18 07:45:00', '2026-02-18 19:00:00', 20, 14, 6, 8),
('2026-02-18 10:15:00', '2026-02-18 10:45:00', 1, 21, 10, 13);
