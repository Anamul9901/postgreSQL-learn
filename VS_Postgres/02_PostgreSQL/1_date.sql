-- Active: 1729482640868@@127.0.0.1@5432@ph

-- show write now timezone
SHOW timezone;

-- timeStamp
SELECT now();

-- create timeZ table with 2 value. 1: without time zone, 2: with time zone
CREATE Table timeZ (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
);

-- create data in timeZ table
INSERT into
    timez
VALUES (
        '2024-01-12 10:45:00',
        '2024-01-12 10:45:00'
    );

SELECT * FROM timez;

-- show current date
SELECT CURRENT_DATE;
--or
SELECT now()::date;

--show current time
SELECT now()::time;

-- date, time show with custom format
SELECT to_char(now(), 'HH-MM-SS');

SELECT to_char(now(), 'YYYY/MM/DD');

SELECT to_char(now(), 'MONTH');

-- current date theke 1 year age
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

-- my age of years, month, days
SELECT age (CURRENT_DATE, '2002-02-10');

SELECT *, age (CURRENT_DATE, dob) FROM students;

-- get year, day, month from a date
SELECT extract( year from '2024-01-25'::date );

SELECT extract( month from '2024-01-25'::date );

SELECT extract( day from '2024-01-25'::date );

SELECT 1::BOOLEAN;
SELECT '0'::BOOLEAN;
SELECT '1'::BOOLEAN;
SELECT 'y'::BOOLEAN;
SELECT 'n'::BOOLEAN;
SELECT 'sdf'::BOOLEAN;