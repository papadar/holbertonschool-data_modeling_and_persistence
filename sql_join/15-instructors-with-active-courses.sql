SELECT DISTINCT instructors.name
FROM instructors
INNER JOIN courses
ON instructors.id = courses.instructor_id
WHERE courses.id IN (
    SELECT course_id
    FROM registrations
)
ORDER BY instructors.name ASC