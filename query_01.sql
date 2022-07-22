--5 students with the highest GPA in all subjects.
SELECT 	grades.student_id,
		students.first_name,
		students.last_name,
		AVG (grades.grade) as avg_grade
FROM grades
LEFT JOIN students ON students.id=grades.student_id
GROUP BY grades.student_id, 
		students.first_name,
		students.last_name
ORDER BY avg_grade DESC
LIMIT 5;