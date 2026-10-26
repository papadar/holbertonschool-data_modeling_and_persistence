SELECT courses.title, COUNT(registrations.student_id)
FROM courses
INNER JOIN registrations
ON courses.id = registrations.course_id
GROUP BY courses.title, Courses.id
ORDER BY courses.title ASC