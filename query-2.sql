QUERY GROUP BY

1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) AS 'n_students', YEAR(`enrolment_date`) AS 'anno'
FROM `students`
GROUP BY YEAR(`enrolment_date`)
ORDER BY 'anno' DESC;


2. Contare gli insegnanti che hanno l ufficio nello stesso edificio

SELECT COUNT(*) AS `n_insegnanti`, `office_address` AS 'indirizzo'
FROM `teachers`
GROUP BY`office_address`
ORDER BY `n_insegnanti` DESC;


3. Calcolare la media dei voti di ogni appello d esame

SELECT `exams`.`id` AS 'appello', AVG(`exam_student`.`vote`) as 'voto_medio'
FROM `exams_studnet`
GROUP BY `exams`.`id`;


4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(*) AS 'numero_corsi_di_laurea', `departments`.`name` AS 'Dipartimento'
FROM `departments`
JOIN `degrees` ON `departments`.`id`= `degrees`.`department_id`
GROUP BY `departments`.`id`;