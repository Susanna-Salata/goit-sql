-- Оценки студентов в группе по предмету.
SELECT groups.group_name,
		students.last_name,
		students.first_name, 
		disciplines.discipline_name,
		grades.grade
FROM students
LEFT JOIN groups ON groups.id=students.group_id
LEFT JOIN grades ON grades.student_id=students.id 
JOIN disciplines ON disciplines.id=grades.discipline_id
WHERE groups.group_name='Web' AND disciplines.discipline_name ='Core'
ORDER BY students.last_name, students.first_name;






