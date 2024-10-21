SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK' OR country= 'Canada'

SELECT * FROM students
    WHERE country IN('USA', 'UK', 'Canada');

SELECT * FROM students
    WHERE country NOT IN('USA', 'UK', 'Canada');


-- 19 and 22 er modde all ages students
SELECT * FROM students
    WHERE age BETWEEN 19 and 22;

SELECT * FROM students
    WHERE dob BETWEEN '2000-09-30' and '2003-06-24';


-- je je student er fitst_name er last 'am' diey sas hoise oi data gule. [aikhane '%' bolte 'am' er age jekonu charecter hote pre]
SELECT * FROM students
    WHERE first_name LIKE '%am';


-- start first_name with 'a' [LIKE is case sencitive]
SELECT * FROM students
    WHERE first_name LIKE 'a%'

SELECT * FROM students
    WHERE first_name LIKE 'A%';


-- first_name er first e jekonu 3 ta charecter than 'a' than jekonu charecter;
SELECT * FROM students
    WHERE first_name LIKE '___a%';

-- ILIKE is case insnsitive
SELECT * FROM students
    WHERE first_name ILIKE 'a%';