SELECT 
    CASE 
        WHEN COUNT(DISTINCT salary) >= 1
        THEN MAX(salary)
        ELSE NULL 
    END AS SecondHighestSalary
FROM (
    SELECT salary
    FROM employee
    WHERE salary < (SELECT MAX(salary) FROM employee)
);