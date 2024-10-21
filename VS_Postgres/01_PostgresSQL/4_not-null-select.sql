-- without usa
SELECT * FROM students WHERE NOT country = 'USA';

-- In JS and postgres NULL is NULL not false(boolean)
SELECT NULL = NULL; -- return NULL

-- '<>' means not equal ( != )
SELECT NULL <> NULL; -- return NULL

SELECT NULL = 1;  -- return NULL

SELECT * FROM students;

-- null data show comment not like that
SELECT * FROM students
    WHERE email <> NULL;

SELECT * FROM students 
    WHERE email = NULL;

-- null data show
SELECT * FROM students
    WHERE email IS NULL;

SELECT * FROM students
    WHERE email IS NOT NULL;



-- coalesec er kaj: jekhane null pabe sekhane default ekta value set kore debe
SELECT COALESCE(email, 'no-email@gmail.com') as "Email", first_name FROM students;

