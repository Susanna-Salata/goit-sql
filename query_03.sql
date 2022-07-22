-- average score in the group in one subject.
SELECT *
FROM grades;

SELECT 	disciplines.discipline_name,		
		groups.group_name,
		AVG (grades.grade) as avg_grade
FROM grades
LEFT JOIN students ON students.id=grades.student_id
LEFT JOIN groups ON groups.id=students.group_id
LEFT JOIN disciplines ON disciplines.id=grades.discipline_id
GROUP BY disciplines.discipline_name,
		groups.group_name
ORDER BY avg_grade DESC;





