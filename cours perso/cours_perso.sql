-- Commande pour tranformer un champ en clé étrangère (ici 2 champs : bonbons et stagiaires)

ALTER TABLE `mange_bonbon` ADD FOREIGN KEY (`id_bonbons`) REFERENCES `bonbons`(`id_bonbons`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `mange_bonbon` ADD FOREIGN KEY (`id_stagiaires`) REFERENCES `stagiaires`(`id_stagiaires`) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE DATABASE IF NOT EXISTS haribo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE stagiaires(id_stagiaires INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT, prenom VARCHAR(100) NOT NULL, yeux VARCHAR(30) NOT NULL, genre ENUM('m','f') NOT NULL);

CREATE TABLE bonbons(id_bonbons INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nom VARCHAR(100) NOT NULL, saveur VARCHAR(100) NOT NULL);

CREATE TABLE mange_bonbon(id_mange_bonbon INT NOT NULL PRIMARY KEY AUTO_INCREMENT, id_bonbons INT DEFAULT NULL, id_stagiaires INT DEFAULT NULL, date_manger DATE NOT NULL, quantite INT NOT NULL);

INSERT INTO stagiaires(prenom, yeux, genre) VALUES ('Roger', 'marron', 'm'), ('Andrea', 'marron', 'm'), ('Alpha', 'marron', 'm'), ('Alexandre', 'marron', 'm'), ('Bashir', 'marron', 'm'), ('Fayçal', 'marron', 'm'), ('Kader',....

INSERT INTO bonbons(nom, saveur) VALUES ('dragibus', 'cola'), ('tagada', 'fraise'), ('bams', 'banane'), ('rotella', 'reglisse'), ('floppys', 'sucre'), ('rainbollows', 'marshmallow'), ('bigharri', 'cerise'), ('oursor', 'fruit...

INSERT INTO mange_bonbon(id_bonbons, id_stagiaires, date_manger, quantite) VALUES(4,7,'2018-12-20',5), (1,1,'2018-12-05',5), (2,2,'2018-12-03',5), (3,3,'2018-12-04',5), (5,4,'2018-12-15',5), (6,5,'2018-12-18',5), (7,6,'2018...



ALTER TABLE mange_bonbon ADD id_bonbons INT DEFAULT NULL;


