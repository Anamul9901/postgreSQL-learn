SELECT * FROM students;

-- create group
SELECT country FROM students
    GROUP BY country;

-- not posiball
SELECT country, age FROM students
    GROUP BY country;


-- create group with country and count how many student on the group and average age
SELECT country, count(*), avg(age) FROM students
    GROUP BY country;


-- filter groups using HAVING to show only countries with average age above 22
-- average age jader 22 year er upore only oi group gule show korbe.
-- aikhane group er khetre WHERE condition kj korbe na, HAVING condition use korte hobe
SELECT country, count(*), avg(age) FROM students
    GROUP BY country
        HAVING avg(age) > 22;


-- count students bron in each year.
SELECT extract(year from dob) as birth_year, count(*) as students
    FROM students
    GROUP BY birth_year