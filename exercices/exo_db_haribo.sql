-- Sélectionner tous les champs de tous les enregistrements de la table *stagiaire*

SELECT * FROM stagiaires;

-- Rajouter un nouveau stagiaire *Delmmma* en forçant la numérotation de l'id (100), yeux(vert)

INSERT INTO stagiaires(id_stagiaires, prenom, yeux, genre) VALUES (100, 'Delmmma', 'vert', 'm');

-- Rajouter un nouveau stagiaire *Mamadou* SANS forcer la numérotation de l'id, yeux(bleu)

INSERT INTO stagiaires(prenom, yeux) VALUES ('Mamadou', 'bleu');

-- Changer le prénom du stagiaire qui a l'id 100 de *Delmmma* à *Delma*

UPDATE stagiaires
SET prenom='Delma'
WHERE id = 100;

-- Rajouter dans la table mange_bonbon que Delma a mangé 5 Tagada purple le 15 septembre 2018

INSERT INTO bonbons(nom, saveur) VALUES ('tagada', 'purple');
INSERT INTO 



INSERT INTO mange_bonbon(quantite, id_bonbons, saveur, date_manger) VALUES (5, 'Delma', 'vert');

-- Sélectionner tous les noms des bonbons

SELECT nom FROM bonbons;

-- Sélectionner tous les noms des bonbons en enlevant les doublons

SELECT DISTINCT nom FROM bonbons;


-- Récupérer les couleurs des yeux des stagiaires

SELECT DISTINCT yeux FROM stagiaires;

-- Sélectionner le stagiaire qui a l'id 5

SELECT * FROM stagiaires WHERE id_stagiaires = 5;

-- Sélectionner tous les stagiaires qui ont les yeux marrons

SELECT * FROM stagiaires WHERE yeux='marron';

-- Sélectionner tous les stagiaires dont l'id est plus grand que 9

SELECT * FROM stagiaires WHERE id_stagiaires > 9;

-- Sélectionner tous les stagiaires SAUF celui dont l'id est 3

SELECT *
FROM stagiaires
WHERE id_stagiaires != 3;


-- Sélectionner tous les stagiaires qui ont un id inférieur ou égal à 10

SELECT *
FROM stagiaires
WHERE id_stagiaires <= 10;


-- Sélectionner tous les stagiaires dont l'id est compris entre 7 et 11

SELECT *
FROM stagiaires
WHERE id_stagiaires BETWEEN 7 AND 11;

-- Sélectionner les stagiaires dont le prénom commence par un *S*

SELECT *
FROM stagiaires
WHERE prenom LIKE 'S%';


-- Trier les stagiaires femmes par id_stagiaires décroissant

SELECT * 
FROM stagiaires
WHERE genre = 'f'
ORDER BY id_stagiaires DESC

-- Trier les stagiaires hommes par prénom dans l'ordre alphabétique

SELECT *
FROM stagiaires
WHERE genre = 'm'
ORDER BY prenom ASC;


-- Trier les stagiaires en affichant les femmes en premier et en classant les couleurs des yeux dans l'ordre alphabétique

SELECT *
FROM stagiaires
ORDER BY genre ASC, yeux ASC;


-- Limiter l'affichage d'une requête de sélection de tous les stagiaires aux 3 premiers résultats

SELECT *
FROM stagiaires
LIMIT 3;

-- Limiter l'affichage d'une requête de sélection de tous les stagiaires à partir du 3ème résultat et des 5 suivants

SELECT *
FROM stagiaires
LIMIT 3,5;
