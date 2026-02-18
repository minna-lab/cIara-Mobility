-- =====================================
-- Données de test cIara Mobility
-- =====================================

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

-- Véhicules Paris
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Renault', 'Zoe', 'Voiture thermique', 395, 'Disponible', 'Paris'),
('Peugeot', '2008', 'Voiture thermique', 340, 'Disponible', 'Paris'),
('Tesla', 'Model 3', 'Voiture électrique', 491, 'En location', 'Paris'),
('Citroën', 'C4', 'Voiture thermique', 357, 'Disponible', 'Paris'),
('BMW', 'i3', 'Voiture électrique', 260, 'En maintenance', 'Paris'),
('Renault', 'Kangoo', 'Voiture thermique', 270, 'Disponible', 'Paris');

-- Véhicules Lyon
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Renault', 'Twingo', 'Voiture thermique', 190, 'Disponible', 'Lyon'),
('Nissan', 'Leaf', 'Voiture électrique', 385, 'Disponible', 'Lyon'),
('Volkswagen', 'ID.3', 'Voiture électrique', 425, 'En location', 'Lyon'),
('Audi', 'R8', 'Voiture thermique', 330, 'Disponible', 'Lyon'),
('Citroën', 'Berlingo', 'Voiture thermique', 300, 'Disponible', 'Lyon');

-- Véhicules Marseille
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Fiat', '500', 'Voiture thermique', 320, 'Disponible', 'Marseille'),
('Hyundai', 'Kona Electric', 'Voiture électrique', 484, 'Disponible', 'Marseille');

-- Véhicules Toulouse
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Dacia', 'Duster', 'Voiture thermique', 230, 'Disponible', 'Toulouse'),
('MG', 'ZS EV', 'Voiture électrique', 440, 'Disponible', 'Toulouse');

-- Véhicules Bordeaux
INSERT INTO vehicule (marque, modele, type_vehicule, autonomie_km, etat, ville) VALUES 
('Opel', 'Corsa-e', 'Voiture électrique', 337, 'Disponible', 'Bordeaux'),
('Ford', 'Focus', 'Voiture thermique', 400, 'Disponible', 'Bordeaux'),
('BMW', 'iX3', 'Voiture électrique', 460, 'Disponible', 'Bordeaux'),
('Renault', 'Captur', 'Voiture thermique', 300, 'Disponible', 'Bordeaux');

-- Clients
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
