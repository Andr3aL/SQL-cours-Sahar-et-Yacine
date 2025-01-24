-- Commande pour tranformer un champ en clé étrangère (ici 2 champs : bonbons et stagiaires)

ALTER TABLE `mange_bonbon` ADD FOREIGN KEY (`id_bonbons`) REFERENCES `bonbons`(`id_bonbons`) ON DELETE RESTRICT ON UPDATE RESTRICT; ALTER TABLE `mange_bonbon` ADD FOREIGN KEY (`id_stagiaires`) REFERENCES `stagiaires`(`id_stagiaires`) ON DELETE RESTRICT ON UPDATE RESTRICT;

