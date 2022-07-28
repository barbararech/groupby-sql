 -- Questão 1

SELECT 
	COUNT("endDate") AS "currentExperiences"
FROM experiences

-- Questão 2

SELECT 
	"userId" AS id,
	COUNT("userId") AS educations
FROM educations
GROUP BY "userId"

--Questão 3

SELECT 
	users.name AS writer,
	COUNT("writerId") AS "testimonialCount"
FROM testimonials
JOIN users
ON users.id = "writerId"
WHERE "writerId" = 435
GROUP BY uwriter;

--Questão 4

SELECT 
	MAX(jobs.salary) AS "maximumSalary",
	roles.name AS role
FROM jobs
JOIN roles
ON roles.id = jobs."roleId"
WHERE jobs.active = true
GROUP BY role
ORDER BY "maximumSalary" ASC;

