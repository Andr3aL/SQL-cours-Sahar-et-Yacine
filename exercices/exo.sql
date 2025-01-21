BDD : entreprise

/* Afficher le nom, le prénom, le service des employés qui ont une lettre "t" au début du prénom et travaillent dans le service commercial et comptabilité */

SELECT nom, prenom, service 
FROM employes 
WHERE prenom LIKE 't%' 
AND service IN ('comptabilite','commercial')

/* Afficher le nom, le prénom et la date d'embauche des employés après 2007 et qui ont le sexe = 'f' */

SELECT nom, prenom, sexe, date_embauche 
FROM employes 
WHERE date_embauche BETWEEN '2007-01-01' AND CURRENT_DATE
AND sexe = 'f'
-- On peut aussi utiliser la fonction CURRENT_DATE de mysql à la place de CURDATE()

/* Afficher les différents salaires touchés dans la base entreprise */

SELECT DISTINCT salaire FROM employes ORDER BY salaire DESC	

/* Afficher les noms et les salaires des employés qui ont un salaire entre 1400 et 4000 */

SELECT nom, salaire
FROM employes
WHERE salaire BETWEEN 1400 AND 4000
ORDER BY salaire DESC

/* Afficher le nombre d'employé par salaire */

SELECT COUNT(*) AS nombre_employés, salaire
FROM employes
GROUP BY salaire

/* Afficher la profession de l'employé 547 */

SELECT id_employes, service AS profession, nom, prenom 
FROM employes 
WHERE id_employes=547

/* Afficher la date d'embauche d'Amandine */

SELECT date_embauche, prenom, nom
FROM employes
WHERE prenom='Amandine'

/* 1. Afficher le nombre de commerciaux */

SELECT service AS commerciaux, COUNT(*) 
FROM employes 
WHERE service='commercial'

/* 2. Afficher le coût des commerciaux sur une année */

SELECT SUM(salaire*8) 
FROM employes 
WHERE service='commercial'

/* 3. Afficher le salaire moyen par service */

SELECT service, AVG(salaire) 
FROM employes
GROUP BY service

/* 4. Afficher le nombre de recrutement sur l'année 2010 */
-- Pas bon, à refaire

SELECT date_embauche, nom, prenom, id_employes, COUNT(salaire) AS nombre_employe 
FROM employes
WHERE date_embauche BETWEEN '2010-01-23' AND '2010-07-05'
GROUP BY date_embauche

-- BON !
SELECT COUNT(*) AS nombre_recrutements
FROM employes
WHERE YEAR(date_embauche) = 2010;

-- Autre façon de faire : 
SELECT COUNT(*) AS nombre_recrutements 
FROM employes 
WHERE date_embauche BETWEEN '2010-01-01' AND '2011-01-01'

/* 5. Augmenter le salaire pour chaque employé de 100€ */ 
 
UPDATE employes SET salaire = salaire+100

/* 5. Augmenter le salaire pour chaque employé de 100€ */ 
--  même chose mais ici on affiche le nom prenom et le salaire maj
UPDATE employes SET salaire = salaire+100;
SELECT nom, prenom, salaire FROM employes;

/* 6. Afficher le nombre de service */ 

SELECT COUNT(DISTINCT service) AS nb_de_services 
FROM employes

/* 7. Afficher 10 employés à partir de l'enregistrement 10 */ 

SELECT nom, prenom, service, salaire 
FROM employes LIMIT 10,20

/* 8. Afficher les informations de l'employé du service commercial gagnant le salaire le plus élevé */ 

SELECT nom, prenom, sexe, service, date_embauche, salaire, id_employes
FROM employes
WHERE service = 'commercial' AND salaire = (SELECT MAX(salaire) FROM employes WHERE service = 'commercial');


-- autre façon de faire plus courte, plus rapide : 
SELECT nom, prenom, sexe, service, date_embauche, salaire, id_employes
FROM employes
WHERE salaire = (SELECT MAX(salaire) FROM employes WHERE service = 'commercial');

/* 9. Afficher l'employé ayant été embauché en dernier */ 

SELECT nom, prenom, sexe, service, date_embauche, salaire, id_employes
FROM employes
WHERE date_embauche = (SELECT MAX(date_embauche) FROM employes);

