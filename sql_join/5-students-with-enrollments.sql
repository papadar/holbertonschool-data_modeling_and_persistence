SELECT students.name
FROM students
WHERE id IN (
    SELECT student_id
    FROM enrollments
)
ORDER BY students.name ASC