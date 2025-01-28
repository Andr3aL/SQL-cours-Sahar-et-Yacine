Serie 1
question 1
SELECT nom_genre, id_genre FROM GENRE ORDER BY nom_genre ASC

Serie 1
question 2
SELECT * FROM GENRE ORDER BY id_genre DESC

Serie 1
question 3
SELECT id_film, duree FROM FILM ORDER BY duree DESC AND ORDER BY id_film DESC 

Serie 1
question 4
SELECT id_real, prenom AS PRENOM_REAL, nom AS NOM_REAL FROM REALISATEUR ORDER BY id_real DESC

Serie 2
question 1
SELECT DISTINCT duree FROM FILM ORDER BY duree ASC

Serie 2
question 2
SELECT nom_genre FROM GENRE ORDER BY nom_genre DESC

Serie 2
question 3
SELECT DISTINCT pays_n FROM REALISATEUR GROUP BY pays_n ASC

Serie 3
question 1
SELECT titre, annee_sortie, duree FROM FILM WHERE id_film = 80

Serie 3
question 2
SELECT id_genre FROM GENRE WHERE nom_genre = 'Romance'

Serie 3
question 3
SELECT nom AS nom_R, id_real AS id_R FROM REALISATEUR WHERE id_real <= 10 ORDER BY id_real DESC

Serie 3
question 4
SELECT id_real FROM REALISE WHERE id_film < 25 ORDER BY id_real DESC

Serie 4
question 1
SELECT id_real, nom FROM REALISATEUR WHERE pays_n IS NULL ORDER BY id_real DESC

Serie 4
question 2
SELECT id_real, nom FROM REALISATEUR WHERE ville_n IS NOT NULL ORDER BY id_real DESC

Serie 5
question 1
SELECT titre, id_film FROM FILM WHERE id_film BETWEEN 10 AND 20 ORDER BY id_film DESC

Serie 5
question 2
SELECT nom, id_real FROM REALISATEUR WHERE id_real NOT BETWEEN 10 AND 60 ORDER BY id_real DESC

Serie 5
question 3
SELECT id_real, nom FROM REALISATEUR WHERE ville_n IS NOT NULL ORDER BY id_real DESC

