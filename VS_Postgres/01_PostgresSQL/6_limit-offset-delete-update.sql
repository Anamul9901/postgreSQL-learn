SELECT * FROM students LIMIT 5;

SELECT * FROM students 
    WHERE country IN('USA', 'UK') LIMIT 5;

-- limit means koita data dekhabe, offset means koto ta data er por theke dekhabe
SELECT * FROM students LIMIT 5 OFFSET 3;

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;



SELECT * FROM students

-- delete full table
DELETE FROM students;

-- delete with condition
DELETE FROM students
    WHERE grade = 'B' AND country = 'UK';




-- update

-- all email change hoye jabe
UPDATE students
    SET email = 'default@gmail.com'

-- update with conditadion
UPDATE students
    SET email ='default@gmail.com', age =30
    WHERE student_id = 13;

