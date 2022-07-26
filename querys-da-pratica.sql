-- QUERY DO EXERCÍCIO 1
SELECT users.id,users.name,cities.name AS city FROM users JOIN cities ON cities.id = users."cityId" WHERE
cities.name = 'Rio de Janeiro';


-- QUERY DO EXERCÍCIO 2

SELECT testimonials.id,testimonials."writerId" AS writer,testimonials."recipientId" AS recipient,testimonials.message,users.name FROM testimonials JOIN users u ON testimonials."writerId" = u.id JOIN users ON testimonials."recipientId" = users.id;


-- QUERY DO EXERCÍCIO 3

SELECT users.id,users.name,courses.name AS course,schools.name,educations."endDate"  FROM users JOIN educations ON educations."userId" = users.id JOIN courses ON courses.id = educations."courseId" JOIN schools ON schools.id = educations."schoolId" WHERE users.id= 30 AND educations.status = 'finished';


-- QUERY DO EXERCÍCIO 4

SELECT users.id,users.name,roles.name AS role,companies.name AS company, experiences."startDate"  FROM users JOIN experiences ON experiences."userId" = users.id  JOIN roles ON roles.id = experiences."roleId" JOIN companies ON companies.id = experiences."companyId" WHERE users.id = 50;