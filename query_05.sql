-- Какие курсы читает преподаватель.
SELECT *
FROM lectors;

SELECT DISTINCT lectors.first_name, 
		lectors.last_name, 
		disciplines.discipline_name 
FROM lectors
LEFT JOIN grades ON grades.lector_id=lectors.id
LEFT JOIN disciplines ON disciplines.id=grades.discipline_id
WHERE lectors.last_name='Dunkin';





