SELECT courses.title, COUNT(registrations.student_id) AS reg_count
FROM courses
LEFT JOIN registrations
ON courses.id = registrations.course_id
GROUP BY courses.title
ORDER BY reg_count DESC, courses.title ASC