-- The average score given by the teacher.
SELECT lectors.last_name as lector,
		AVG(grades.grade) as avg_grade
FROM grades
LEFT JOIN lectors ON lectors.id=grades.lector_id
WHERE lectors.last_name='Dunkin'
GROUP BY lectors.last_name





