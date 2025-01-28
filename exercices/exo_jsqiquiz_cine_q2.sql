Serie 1
Question 1


Serie 1
Question 2
SELECT id_real, UPPER(nom) AS NOM, LOWER(prenom) AS PRENOM 
FROM REALISATEUR 
WHERE LENGTH(nom) >= 8 
ORDER BY id_real DESC

