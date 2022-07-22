-- Grades of students in the group on the subject at the last lesson.
SELECT *
FROM grades;

SELECT groups.group_name,
		students.last_name,
		students.first_name, 
		disciplines.discipline_name,
		grades.grade,
		grades.exam_date
FROM students
LEFT JOIN groups ON groups.id=students.group_id
LEFT JOIN grades ON grades.student_id=students.id 
JOIN disciplines ON disciplines.id=grades.discipline_id
WHERE groups.group_name='Web' 
	AND disciplines.discipline_name ='Core'
	AND grades.exam_date = (SELECT MAX(grades.exam_date) FROM grades WHERE discipline_id=disciplines.id) 
ORDER BY students.last_name, students.first_name;






