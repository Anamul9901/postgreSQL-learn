/*
    @Scalar functions
    upper() converts a string to uppercase.
    lower() converts a string to lowercase.
    concat() concatenates tow rot more strings.
    length() returns the number of characters in a string.

    @Aggregate functions [aggregate function alyase ekta value return kore]
    AVG() calculte the average of a set of values.
    MAX() returns the max value in a set.
    MIN() returns the minimum value in a set.
    SUM() calculates the sum of values in a set.
    COUNT() counts the number of rows in a set.

*/
 -- Scalar
-- first_name with upper case
SELECT upper(first_name) as first_name_in_upper_case, * FROM students;

-- show full name = first_name + last_name
SELECT concat(first_name, ' ', last_name) FROM students;

-- first_name er word er length
SELECT length(first_name) from students;




-- Aggregate

-- all age er average
SELECT avg(age) FROM students;

-- max or min age
SELECT min(age) FROM students;

-- sum of all ages
SELECT sum(age) FROM students;

-- how many row in students table
SELECT count(*) FROM students;

-- which students first_name length is high
SELECT max(length(first_name)) FROM students;