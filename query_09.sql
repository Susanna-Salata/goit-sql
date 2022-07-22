-- List of courses the student is attending.
SELECT DISTINCT students.last_name,
		students.first_name,
		disciplines.discipline_name
FROM grades
LEFT JOIN students ON students.id=grades.student_id
LEFT JOIN disciplines ON disciplines.id=grades.discipline_id
WHERE grades.student_id = 1






