
-- Données de test cIara Mobility


-- Stations (2 par ville)
INSERT INTO station (nom, ville) VALUES
('Gare Centrale', 'Paris'),
('République', 'Paris'),
('Part-Dieu', 'Lyon'),
('Bellecour', 'Lyon'),
('Saint-Charles', 'Marseille'),
('Vieux-Port', 'Marseille'),
('Capitole', 'Toulouse'),
('Jean Jaurès', 'Toulouse'),
('Masséna', 'Nice'),
('Promenade des Anglais', 'Nice'),
('Lille Flandres', 'Lille'),
('Grand Place', 'Lille'),
('Gare Saint-Jean', 'Bordeaux'),
('Place de la Bourse', 'Bordeaux'),
('Gare Sud', 'Nantes'),
('Commerce', 'Nantes'),
('Saint-Roch', 'Montpellier'),
('Comédie', 'Montpellier'),
('Gare Centrale', 'Strasbourg'),
('Petite France', 'Strasbourg');



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
 
 -- Locations
 INSERT INTO location (date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee)
VALUES
('2026-02-01', '2026-02-03', 1, 1, 1, 2),
('2026-02-05', '2026-02-06', 2, 2, 3, 4),
('2026-02-07', '2026-02-09', 3, 3, 5, 6),
('2026-02-10', '2026-02-11', 4, 4, 7, 8),
('2026-02-12', '2026-02-13', 5, 5, 9, 10),
('2026-02-14', '2026-02-15', 6, 6, 11, 12),
('2026-02-16', '2026-02-17', 7, 7, 13, 14),
('2026-02-18', '2026-02-19', 8, 8, 15, 16),
('2026-02-20', '2026-02-21', 9, 9, 17, 18),
('2026-02-22', '2026-02-23', 10, 10, 19, 20),
('2026-02-24', '2026-02-25', 1, 11, 1, 2),
('2026-02-26', '2026-02-27', 1, 12, 3, 4),
('2026-02-28', '2026-03-01', 2, 13, 5, 6),
('2026-03-02', '2026-03-03', 2, 14, 7, 8),
('2026-03-04', '2026-03-05', 11, 15, 9, 10),
('2026-03-06', '2026-03-07', 12, 16, 11, 12),
('2026-03-08', '2026-03-09', 13, 17, 13, 14),
('2026-03-10', '2026-03-11', 14, 18, 15, 16),
('2026-03-12', '2026-03-13', 15, 19, 17, 18),
('2026-03-14', '2026-03-15', 16, 20, 19, 20);
