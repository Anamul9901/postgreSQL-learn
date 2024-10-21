-- create a table
CREATE TABLE students (
    student_id SERIAL primary KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age > 18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)


--create multiple row
INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('Johnam', 'Doam', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-03-15', 'O+', 'USA'),
    ('Jane', 'Smiam', 22, 'B', 'Mechanical Engineering', NULL, '2002-07-22', 'A-', 'Canada'),
    ('Emilyam', 'Johnson', 19, 'A', 'Electrical Engineering', 'emily.johnson@example.com', '2005-01-10', 'B+', 'UK'),
    ('Anamul', 'Brown', 23, 'B', 'Civil Engineering', 'michael.brown@example.com', '2001-11-05', 'O-', 'Australia'),
    ('David', 'Williams', 21, 'C', 'Information Technology', NULL, '2003-05-12', 'AB+', 'USA'),
    ('Linda', 'Jones', 24, 'A', 'Business Administration', 'linda.jones@example.com', '2000-09-30', 'A+', 'USA'),
    ('Robert', 'Garcia', 25, 'B', 'Software Engineering', 'robert.garcia@example.com', '1999-02-18', 'O+', 'UK'),
    ('Sarah', 'Miller', 21, 'C', 'Biotechnology', 'sarah.miller@example.com', '2003-06-24', 'B-', 'France'),
    ('James', 'Martinez', 22, 'A', 'Physics', NULL, '2002-04-09', 'AB-', 'Canada'),
    ('Elizabeth', 'Davis', 19, 'B', 'Mathematics', 'elizabeth.davis@example.com', '2005-12-14', 'O-', 'Canada'),
    ('Daniel', 'Rodriguez', 20, 'C', 'Chemistry', 'daniel.rodriguez@example.com', '2004-08-21', 'A-', 'UK'),
    ('Sophia', 'Wilson', 23, 'A', 'Economics', 'sophia.wilson@example.com', '2001-10-02', 'B+', 'New Zealand');


-- show all data
SELECT * FROM students;


-- drop table
DROP TABLE students;


-- show specific column
SELECT email, age, blood_group FROM students;


-- change collumn name when show
SELECT email as "Student Email", age FROM students;


-- shwo with sort (asendig or desingding)
SELECT * FROM students ORDER BY age ASC;

SELECT country FROM students ORDER BY country ASC;

-- show unique country
SELECT DISTINCT country from students;

SELECT DISTINCT blood_group from students;


-----------------------DATA FILTERING------------------------------

-- 1. select students from the USA
-- 2. select students with 'A' grade in Physics
-- 3. select students with a specific blood group ('A+)
-- 4. select students from the USA or from Australia
-- 5. select students from the USA or from Australia and the age is 20
-- 6. select students with a grade of 'A' or 'B' in Math or Physics;


-- 1.
SELECT * FROM students
    WHERE country = 'USA';

-- 2.
SELECT * FROM students
    WHERE grade = 'A' AND course = 'Physics';

-- 3.
SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia';

-- 4.
SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

