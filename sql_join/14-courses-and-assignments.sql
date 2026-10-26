SELECT courses.title, assignments.title
FROM courses
CROSS JOIN assignments
ON courses.id = assignments.course_id
GROUP BY courses.title
ORDER BY courses.title ASC, assignments.title ASC