SELECT DISTINCT teachers.name as teacher, (SELECT cohorts.name FROM cohorts WHERE cohorts.name = 'JUL02') as cohort, COUNT(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher
ORDER BY teacher;
