QUERY JOIN

1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT `degrees`.`name` as 'corso_di_laurea', `students`.`id` AS 'studenti'
FROM `degrees`
JOIN `students` ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` LIKE 'Corso di Laurea in Economia';


2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
Neuroscienze

SELECT `departments`.`name` AS 'nome_dipartimento', `degrees`.`name` AS 'corso'
FROM `departments`
JOIN `degrees` ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` LIKE 'Dipartimento di Neuroscienze'
AND `degrees`.`level` LIKE 'Magistrale';