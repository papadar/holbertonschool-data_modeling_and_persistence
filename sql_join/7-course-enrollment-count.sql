SELECT courses.title, COUNT() AS enrollment_count 
FROM courses
LEFT JOIN enrollments
ON courses.id = enrollments.course_id
GROUP BY courses.id, courses.title
ORDER BY enrollment_count DESC, courses.title ASC