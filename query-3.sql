QUERY JOIN

1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `degrees`.`name` as 'corso_di_laurea', `students`.`id` AS 'studenti'
FROM `degrees`
JOIN `students` ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` LIKE 'Corso di Laurea in Economia';


