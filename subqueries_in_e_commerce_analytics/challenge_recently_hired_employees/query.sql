SELECT
    employee_id,
    name,
    department_id, 
    hire_date,
    salary
From employees
    wHERE hire_date>=(DATE '2021-01-02' - INTERVAL '6 months');