-- Список студентов в группе.
SELECT *
FROM students;


SELECT DISTINCT students.first_name, 
				students.last_name 
FROM students
LEFT JOIN groups ON groups.id=students.group_id
WHERE groups.group_name='Core';






