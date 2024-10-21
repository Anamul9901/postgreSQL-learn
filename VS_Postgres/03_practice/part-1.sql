CREATE TABLE employees2 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments2(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
)

CREATE TABLE departments2 (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

INSERT INTO departments2 (department_name) VALUES
    ('HR'),
    ('Marketing'),
    ('Fkinance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Research'),
    ('Quality Assurance');


INSERT INTO employees2 (employee_name, department_id, salary, hire_date) VALUES 
    ('John Doe', 1, 55000.50, '2021-03-01'),
    ('Jane Smith', 2, 62000.75, '2019-07-15'),
    ('Robert Johnson', 3, 47500.00, '2020-11-23'),
    ('Michael Brown', 4, 51000.25, '2018-05-10'),
    ('Emily Davis', 5, 59000.80, '2022-01-30'),
    ('David Wilson', 6, 46000.40, '2020-09-12'),
    ('Laura Martinez', 7, 70000.00, '2017-12-05'),
    ('Christopher Lee', 8, 48000.15, '2021-10-18'),
    ('Sarah Harris', 9, 54000.90, '2020-04-22'),
    ('Brian Clark', 10, 52000.65, '2022-07-09'),
    ('Jessica Lewis', 1, 63000.25, '2020-06-11'),
    ('Daniel Walker', 2, 45500.30, '2019-09-30'),
    ('Karen Hall', 3, 67000.50, '2021-02-14'),
    ('Matthew Young', 4, 53000.10, '2019-11-05'),
    ('Ashley Allen', 5, 45000.75, '2020-08-27'),
    ('Joshua Scott', 6, 74000.90, '2022-05-19'),
    ('Amanda King', 7, 61000.45, '2021-09-01'),
    ('James Wright', 8, 56000.80, '2022-03-20'),
    ('Jennifer Baker', 9, 59000.20, '2018-07-25'),
    ('Andrew Gonzalez', 10, 46500.35, '2020-12-13');


DROP Table employees2;

SELECT * FROM departments2;
SELECT * FROM employees2;


-- 1: Inner join to Retrieve employee2 and department2 information:
SELECT * FROM employees2
    JOIN departments2 ON employees2.department_id = departments2.department_id;
-- or   : [if key is same, here department_id is same then i can user USING]
SELECT * FROM employees2
    JOIN departments2 USING(department_id);


-- 2: Show Department Name wit Average Salary:
SELECT department_name, round(avg(salary)) as avg_salary FROM employees2
    JOIN departments2 USING(department_id)
    GROUP BY department_name
    ;