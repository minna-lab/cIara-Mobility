
# 🚗 Rapport d’Analyse  – Projet SQL cIara Mobility

__👩‍💻👨‍💻 Binôme : Antoine & Minna__


## 🎯 Objectif du document

Ce document présente notre compréhension du projet **cIara Mobility**, notre organisation de travail ainsi que les choix techniques réalisés lors de la conception et de la mise en place de la base de données.

L’objectif principal de ce projet était de concevoir une base de données relationnelle permettant de :

* gérer une flotte de véhicules électriques,
* suivre les informations clients,
* enregistrer les locations,
* analyser les données grâce à SQL afin d’aider à la prise de décision.


## 🤝 A. Organisation du travail en binôme

__🔹 Méthodologie__

Nous avons adopté une méthode de travail progressive et structurée. Avant chaque étape, nous avons pris le temps de comprendre le problème clé afin de proposer une solution cohérente.

Notre démarche s’est déroulée de la manière suivante :

1. Analyse du sujet et des besoins métier.
2. Compréhension du modèle de données fourni.
3. Mise en place de la base PostgreSQL.
4. Tests des requêtes dans pgAdmin.
5. Correction des erreurs.
6. Validation des résultats.
7. Versionnement avec Git et GitHub.

Cette approche nous a permis de sécuriser notre travail et de limiter les incohérences.

Nous avons échangé régulièrement afin de comparer nos résultats, corriger les erreurs et améliorer notre compréhension des jointures SQL.


__🔹 Répartition des rôles__

Le projet a été réalisé par **Minna et Antoine**, avec une répartition claire et complémentaire.

#### 👩‍💻 Minna

Minna s’est principalement chargée de :

* la création de la base PostgreSQL,
* la création des tables (*vehicule, station, client, location*),
* la mise en place des clés primaires et étrangères,
* l’importation du fichier de données fourni,
* la création d’une table intermédiaire pour nettoyer et transformer les données,
* la vérification de la cohérence des informations,
* la gestion des erreurs liées aux contraintes,
* la réalisation des **quêtes 1 et 3**.


#### 👨‍💻 Antoine

Antoine s’est chargé de :

* la réalisation des **quêtes 2, 4 et 5**,
* les filtres, tris et analyses avancées,
* les requêtes d’agrégation,
* la validation des résultats métier.

Nous avons également travaillé ensemble sur :

* la compréhension des relations entre les tables,
* l’optimisation des jointures,
* la correction des erreurs SQL.


__🔹 Gestion de version (Git / GitHub)__

Nous avons utilisé **Git et GitHub** afin de suivre l’évolution du projet.

Chaque quête a été enregistrée dans un fichier SQL distinct, ce qui nous a permis :

* de mieux organiser notre travail,
* de revenir facilement sur les versions précédentes,
* de structurer le projet de manière professionnelle.

Nous avons effectué des commits réguliers avec des messages explicites.


__🔹 Environnement de travail__

Nous avons utilisé les outils suivants :

* PostgreSQL : système de gestion de base de données,
* pgAdmin : interface graphique pour tester les requêtes,
* VS Code : organisation et rédaction des scripts,
* Terminal : gestion Git,
* GitHub : versionnement.

Cet environnement est proche de celui utilisé dans le monde professionnel.


## 🗄️ B. Analyse du Modèle de Données (MCD)

__🔹 Structure de la base__

La base repose sur quatre tables principales :

| Table        | Rôle                                         |
| ------------ | -------------------------------------------- |
| **vehicule** | Contient les informations de la flotte       |
| **station**  | Représente les points de départ et d’arrivée |
| **client**   | Contient les utilisateurs                    |
| **location** | Historique des réservations                  |

La table **location** est la table centrale car elle relie les autres.

---

__🔹 Relations entre les tables__

Chaque table possède une clé primaire :

* `id_client`
* `id_vehicule`
* `id_station`
* `id_location`

La table **location** contient plusieurs clés étrangères :

* vers **client** (qui loue),
* vers **vehicule** (ce qui est loué),
* vers **station départ** et **station arrivée**.

Cela permet de garantir la cohérence et la traçabilité des données.

Par exemple :

Un client peut effectuer plusieurs locations, mais une location appartient à un seul client.
On parle donc d’une relation **1 à N**.

De même :

Un véhicule peut être loué plusieurs fois au cours du temps, mais une location concerne un seul véhicule.

Enfin, les stations permettent de suivre les trajets et d’analyser les flux.


__🔹 Pertinence du modèle__

 La structuration de la base répond directement aux besoins métier de **cIAra Mobility** car elle sépare clairement les entités principales tout en les reliant de manière cohérente.

* La table **vehicule** permet de gérer la flotte : état, autonomie, ville, année.
* La table **client** permet d’identifier et suivre les utilisateurs.
* La table **station** organise les points de départ et d’arrivée.
* La table **location** relie les trois autres et enregistre l’historique des trajets.

Grâce aux clés primaires et étrangères, chaque location est rattachée à un client, un véhicule et des stations précises.

Cette organisation permet :

* de connaître les véhicules disponibles,
* de suivre l’utilisation de la flotte,
* d’analyser les trajets,
* d’identifier les clients actifs,
* d’optimiser la répartition des véhicules.

Le modèle est structuré, cohérent et adapté à une gestion professionnelle d’un service de mobilité.


## ⚙️ C. Choix Techniques et Syntaxe SQL

__🔹 Stratégie de requête__

Pour les requêtes complexes, nous avons commencé par **décomposer le problème métier en étapes simples**.
Nous avons d’abord lu la question pour bien comprendre le besoin. Ensuite, nous avons découpé le problème en petites étapes pour identifié les tables nécessaires, puis les relations entre elles, avant d’ajouter progressivement les conditions et les calculs.Cela nous a permis de ne pas être bloqués et de mieux contrôler les résultats.

Par exemple, lorsqu’il fallait afficher les informations complètes d’une location, nous avons procédé ainsi :

1. Vérifier le contenu de la table **location** pour comprendre les colonnes disponibles.
2. Ajouter une jointure avec la table **client** pour afficher le nom et le prénom.
3. Ajouter ensuite la table **vehicule** pour obtenir le modèle.
4. Enfin, relier la table **station** pour afficher les lieux de départ et d’arrivée.

Cette méthode progressive nous a permis :

* de mieux comprendre la structure,
* de limiter les erreurs,
* de valider chaque étape avant d’aller plus loin.

__🔹 Justification des commandes SQL__

Nous avons utilisé différentes commandes en fonction des besoins métier.

### ✔ JOIN

Les jointures ont été essentielles pour relier les données entre les tables.
Sans les **JOIN**, il serait impossible d’obtenir une vision complète d’une location, car les informations sont réparties dans plusieurs tables.Par exemple, pour afficher les locations avec les informations des clients et des véhicules, il était nécessaire de connecter les tables entre elles.

Nous avons principalement utilisé :

* **INNER JOIN** pour récupérer uniquement les données liées,
* **LEFT JOIN** lorsque nous voulions identifier les éléments sans correspondance, comme les véhicules jamais loués.

### ✔ GROUP BY

Cette commande a été utilisée pour regrouper les données et fairedes analyses, par exemple :

* compter le nombre de locations par client,
* analyser l’activité.

Elle permet de transformer les données brutes en indicateurs.

### ✔ HAVING

Nous avons utilisé **HAVING** pour filtrer les résultats après un regroupement.
Par exemple, afficher uniquement les clients ayant réalisé plusieurs locations.

### ✔ ORDER BY et LIMIT

Ces commandes ont permis de trier les résultats et de mettre en avant les informations les plus pertinentes.


__🔹 Logique de filtrage__

Nous avons traduit les besoins métier en conditions techniques simples.

Par exemple :

* “Véhicules disponibles” est devenu
  `WHERE etat = 'Disponible'`.
* “Autonomie supérieure à 400 km” est devenu
  `WHERE autonomie_km > 400`.
* “Clients actifs” a été traduit par un regroupement et un filtrage :
  `GROUP BY` puis `HAVING COUNT(*)`.

Cette étape a été importante, car elle nous a permis de comprendre comment transformer un besoin fonctionnel en logique SQL.

Cette démarche nous a aidés à développer une vision structurée et professionnelle de la construction des requêtes, tout en renforçant notre capacité à analyser des données dans un contexte réel.


## 🚧 D. Difficultés rencontrées et solutions
__❌ Importation de la base dans pgAdmin__

L’une des principales difficultés a été l’importation des données dans PostgreSQL.

Au départ, nous avons rencontré plusieurs erreurs :

* erreurs de syntaxe SQL,
* incompatibilité entre les formats CSV et la structure des tables,
* erreurs liées aux contraintes de clés étrangères,
* problèmes liés aux commandes générées par PostgreSQL (ex : `COPY`, caractères spéciaux).

Certaines versions exportées contenaient des éléments non compatibles avec pgAdmin, comme des commandes spécifiques ou des métadonnées.


### ✔ Solution mise en place

Pour résoudre ce problème, nous avons adopté une méthode structurée :

1. Création manuelle des tables avec les bonnes contraintes.
2. Vérification des types de données.
3. Importation des données via l’outil **Import/Export de pgAdmin**.
4. Utilisation du format CSV.
5. Création d’une table intermédiaire lorsque nécessaire.
6. Nettoyage et transformation des données.
7. Insertion finale dans les tables principales.

Nous avons également utilisé les logs d’erreur de PostgreSQL pour comprendre précisément les problèmes.

Cette démarche nous a permis de :

* comprendre les contraintes du SGBD,
* améliorer la qualité des données,
* renforcer notre autonomie.


__❌ Contraintes et relations__

Les clés étrangères ont parfois provoqué des erreurs lors des suppressions ou insertions.

✔ Solution :

* insertion dans le bon ordre,
* gestion des dépendances,
* utilisation de `CASCADE` lorsque nécessaire.

---

 __❌ Compréhension des jointures__

Au début, les jointures complexes étaient difficiles.

✔ Solution :

* progression étape par étape,
* exercices simples,
* tests réguliers.

Cela a fortement amélioré notre compréhension.


## 🌟 Conclusion

Ce projet nous a permis de développer des compétences importantes :

* modélisation de bases de données,
* SQL avancé,
* collaboration,
* résolution de problèmes réels,
* rigueur et méthodologie.

Nous avons appris à relier les besoins métier aux solutions techniques.

Ce projet constitue une base solide pour nos futurs travaux en développement, data et ingénierie logicielle.


