SELECT instructors.name
FROM instructors
WHERE id IN (
    SELECT instructor_id
    FROM courses
)
ORDER BY instructors.name ASC