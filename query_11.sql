-- The average score given by the teacher to the student.
SELECT students.last_name,
		students.first_name,
		lectors.last_name as lector,
		AVG(grades.grade) as avg_grade
FROM grades
LEFT JOIN students ON students.id=grades.student_id
LEFT JOIN lectors ON lectors.id=grades.lector_id
WHERE grades.student_id = 1 AND lectors.last_name='Dunkin'
GROUP BY students.last_name,
		students.first_name,
		lectors.last_name





