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

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT `courses`.name AS 'corsi'
FROM `courses`
JOIN `course_teacher`ON `courses`.`id`= `course_teacher`.`course_id`
JOIN `teachers` ON `course_teacher`.`teacher_id`= `teachers`.`id`
where `teachers`.`id`= 44;


4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
nome

SELECT `students`.`surname` AS 'Cognome',`students`.`name` as 'Nome', `degrees`.`name` AS 'Corso_di_laurea', `departments`.`name` AS 'Dipartimento'
FROM `students`
JOIN `degrees` ON `students`.`degree_id`= `degrees`.`id`
JOIN `departments`ON `degrees`.`department_id`= `departments`.`id`
ORDER BY `students`.`surname`,`students`.`name`;

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT `degrees`.`name` AS 'corso_di_laurea', `courses`.`name` AS 'corsi', `teachers`.`name` AS 'Nome_professore', `teachers`.`surname` AS 'Cognome_professore'
FROM `degrees`
JOIN `courses`ON `courses`.`degree_id`= `degrees`.`id`
JOIN `course_teacher`ON `course_teacher`.`course_id`=`courses`.`id`
JOIN `teachers` ON `course_teacher`.`teacher_id`= `teachers`.`id`
ORDER BY `degrees`.`name`;


6. Selezionare tutti i docenti che insegnano nel Dipartimento di
Matematica (54)

SELECT DISTINCT `departments`.`name` AS 'nome_dipartimento', `teachers`.`name` AS 'nome_professore', `teachers`.`surname` AS 'cognome_professore'
FROM `departments`
JOIN `degrees` ON `degrees`.`department_id`= `departments`.`id`
JOIN `courses`ON `courses`.`degree_id`= `degrees`.`id`
JOIN `course_teacher` ON `course_teacher`.`course_id`=`courses`.`id`
JOIN `teachers` ON `teachers`.id = `course_teacher`.`teacher_id`
WHERE `departments`.`name` LIKE 'Dipartimento di Matematica';