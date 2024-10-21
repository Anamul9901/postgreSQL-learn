
--3: Count employees in each department:
SELECT department_name, count(employee_id) from employees2
    JOIN departments2 USING(department_id)
    GROUP BY department_name;



-- 4: Find the departmnt name with the highest average salary:
SELECT department_name, round(avg(salary)) as avg_salary from employees2
    JOIN departments2 USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary DESC
    LIMIT 1
    ;



-- 5: Count employees Hired each year:
SELECT extract(YEAR from hire_date) as hire_year, count(*) as net_employees FROM employees2
    GROUP BY hire_year
-- GROUP BY extract(YEAR FROM hire_date) 


