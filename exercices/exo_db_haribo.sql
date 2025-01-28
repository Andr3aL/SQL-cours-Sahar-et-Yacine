-- Sélectionner tous les champs de tous les enregistrements de la table *stagiaire*

SELECT * FROM stagiaires;

-- Rajouter un nouveau stagiaire *Delmmma* en forçant la numérotation de l'id (100), yeux(vert)

INSERT INTO stagiaires(id_stagiaires, prenom, yeux, genre) VALUES (100, 'Delmmma', 'vert', 'm');

-- Rajouter un nouveau stagiaire *Mamadou* SANS forcer la numérotation de l'id, yeux(bleu)

INSERT INTO stagiaires(prenom, yeux, genre) VALUES ('Mamadou', 'bleu', 'm');

-- Changer le prénom du stagiaire qui a l'id 100 de *Delmmma* à *Delma*

UPDATE stagiaires
SET prenom='Delma'
WHERE id_stagiaires = 100;

-- Rajouter dans la table mange_bonbon que Delma a mangé 5 Tagada purple le 15 septembre 2018

INSERT INTO bonbons(id_bonbons, nom, saveur) VALUES (12, 'tagada', 'purple');
INSERT INTO 

INSERT INTO mange_bonbon(id_mange_bonbon, id_bonbons, id_stagiaires, date_manger, quantité) VALUES (12, 12, 100, '2018-09-15', 5);


Correction : 

1ère étape, 1ère méthode : 
INSERT INTO bonbons SET nom = 'tagada', saveur = 'purple';
2ème méthode : 
INSERT INTO bonbons(nom, saveur) VALUES ('tagada', 'purple');

2ème étape : 
INSERT INTO mange_bonbon(id_bonbons, id_stagiaires, date_manger, quantite) VALUES (12, 100, '2018-09-15', 5);

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

Autre façon de faire : 
SELECT *
FROM stagiaires
WHERE id_stagiaires <> 3;

Autre façon de faire :
SELECT *
FROM stagiaires
WHERE id_stagiaires < 3 OR id_stagiaires > 3;

-- Sélectionner tous les stagiaires qui ont un id inférieur ou égal à 10

SELECT *
FROM stagiaires
WHERE id_stagiaires <= 10;


-- Sélectionner tous les stagiaires dont l'id est compris entre 7 et 11

SELECT *
FROM stagiaires
WHERE id_stagiaires BETWEEN 7 AND 11;

Autre méthode :
SELECT *
FROM stagiaires
WHERE id_stagiaires >= 7 AND id_stagiaires <= 11;

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
ORDER BY genre DESC, yeux ASC;


-- Limiter l'affichage d'une requête de sélection de tous les stagiaires aux 3 premiers résultats

SELECT *
FROM stagiaires
LIMIT 0,3; 
-- LIMIT 3; fonctionne mais il faut conventionnellement écrire LIMIT 0,3;



-- Limiter l'affichage d'une requête de sélection de tous les stagiaires à partir du 3ème résultat et des 5 suivants

SELECT *
FROM stagiaires
LIMIT 2,5;

Autre méthode : 
SELECT *
FROM stagiaires
LIMIT 5 OFFSET 2;

-- Afficher les 4 premiers stagiaires qui ont les yeux marron

SELECT *
FROM stagiaires
WHERE yeux = 'marron'
LIMIT 0,4;



-- Afficher les 4 premiers stagiaires qui ont les yeux marron en triant les prenom dans l'ordre alphabétique

SELECT *
FROM stagiaires
WHERE yeux = 'marron'
ORDER BY prenom ASC
LIMIT 0,4;



-- Compter le nombre de stagiaires

SELECT COUNT(*) AS nb_de_stagiaires
FROM stagiaires;



-- Compter le nombre de stagiaires hommes mais en changeant le nom de la colonne de résultat par *nb_stagiaires_H*



SELECT COUNT(*) AS nb_stagiaires_H
FROM stagiaires
WHERE genre = 'm';



-- Compter le nombre de couleurs des yeux différentes


SELECT DISTINCT yeux AS nb_couleurs_yeux_diff
FROM stagiaires;


-- Afficher le prénom et les yeux du stagiaire qui a l'id_stagiaire le plus petit


1ère façon de faire : 
SELECT prenom, yeux
FROM stagiaires
ORDER BY id_stagiaires ASC
LIMIT 1;

2ème façon de faire : 
SELECT prenom, yeux
FROM stagiaires
WHERE id_stagiaires = (SELECT MIN(id_stagiaires) FROM stagiaires);




-- Afficher les stagiaires qui ont les yeux bleu et vert

SELECT *
FROM stagiaires
WHERE yeux = 'vert' OR yeux = 'bleu';



-- A l'inverse maintenant, afficher les stagiaires qui n'ont pas les yeux bleu ni vert


SELECT *
FROM stagiaires
WHERE yeux != 'vert' AND yeux != 'bleu';



-- Afficher combien de bonbons ont été consommés au total

SELECT SUM(quantite) AS nb_total_bonbons_conso
FROM mange_bonbon;



-- Afficher les saveurs des bonbons (sans doublons)

SELECT DISTINCT saveur
FROM bonbons;



-- Afficher le prénom et les yeux du stagiaire qui a l'id le plus grand /!\ c'est une requête imbriquée qu'il faut faire (requête sur le résultat d'une autre requête) 

SELECT prenom, yeux
FROM stagiaires
WHERE id_stagiaires = (SELECT MAX(id_stagiaires) FROM stagiaires);


-- récupérer tous les stagiaires qui ont mangé des bonbons

SELECT *
FROM mange_bonbon
WHERE quantite != 0;


-- Récupérez les informations sur les stagiaires qui ont mangé plus d'un seul bonbon

SELECT *
FROM mange_bonbon
WHERE quantite > 1;






-- Afficher le prénom du stagiaire, le nom du bonbon, la date de consommation pour tous les stagiaires qui ont mangé au moins une fois

-- SELECT stagiaires.prenom AS prenom_stagiaire, bonbons.nom AS nom_bonbon, mange_bonbon.date_manger AS date_conso
-- FROM stagiaires
-- WHERE quantite != 0;

SELECT stagiaires.prenom AS prenom_stagiaire, bonbons.nom AS nom_bonbon, mange_bonbon.date_manger AS date_conso
FROM stagiaires
JOIN mange_bonbon ON stagiaires.id_stagiaires = mange_bonbon.id_stagiaires
JOIN bonbons ON mange_bonbon.id_bonbons = bonbons.id_bonbons
WHERE quantite != 0;



-- Afficher le nombre de consommation de *Tagada*
-- PAS OK

SELECT COUNT(*) AS nb_tagada_par_stagiaire
FROM mange_bonbon
JOIN stagiaires ON mange_bonbon.id_stagiaires = stagiaires.id_stagiaires
JOIN bonbons ON mange_bonbon.id_bonbons = bonbons.id_bonbons
WHERE id_bonbons = 2;



SELECT COUNT(*) AS nb_tagada_par_stagiaire
FROM mange_bonbon
JOIN stagiaires ON mange_bonbon.prenom = stagiaires.prenom
JOIN bonbons ON mange_bonbon.nom = bonbons.nom
WHERE mange_bonbon.id_bonbons = 2;


-- Afficher cette fois le total de "tagada" consommées
-- PAS OK

SELECT SUM() AS nb_tagada_par_stagiaire
FROM mange_bonbon
JOIN stagiaires ON mange_bonbon.id_stagiaires = stagiaires.id_stagiaires
JOIN bonbons ON mange_bonbon.id_bonbons = bonbons.id_bonbons
WHERE id_bonbons = 2;




-- Afficher le prénom du stagiaire qui a mangé le plus de bonbons

SELECT id_stagiaires
FROM mange_bonbon
WHERE quantite = (SELECT MAX(quantite) FROM mange_bonbon);



