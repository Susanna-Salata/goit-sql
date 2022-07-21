-- 1 студент с наивысшим средним баллом по одному предмету.
SELECT 	grades.student_id,
		students.first_name,
		students.last_name,
		disciplines.discipline_name,
		AVG (grades.grade) as avg_grade
FROM grades
LEFT JOIN students ON students.id=grades.student_id
LEFT JOIN disciplines ON disciplines.id=grades.discipline_id
GROUP BY grades.student_id, 
		grades.discipline_id, 
		students.first_name,
		students.last_name,
		disciplines.discipline_name
ORDER BY avg_grade DESC
LIMIT 1;





