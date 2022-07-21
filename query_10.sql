-- Список курсов, которые студенту читает преподаватель.
SELECT DISTINCT students.last_name,
		students.first_name,
		disciplines.discipline_name,
		lectors.last_name as lector
FROM grades
LEFT JOIN students ON students.id=grades.student_id
LEFT JOIN disciplines ON disciplines.id=grades.discipline_id
LEFT JOIN lectors ON lectors.id=grades.lector_id
WHERE grades.student_id = 1 AND lectors.last_name='Dunkin'






