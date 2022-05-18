-- Tente encontrar as seguintes informações, utilizando o schema hr -- 
/* 1.1) Queremos saber o Nome das pessoas colaboradoras e suas respectivas gerências (manager) cujos
        departamentos (department) são diferentes.*/
SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome Colaborador',
       CONCAT(manager.FIRST_NAME, ' ', manager.LAST_NAME) AS 'Nome Gerente'
FROM hr.employees AS employee
INNER JOIN hr.employees AS manager
ON employee.MANAGER_ID = manager.EMPLOYEE_ID
WHERE employee.DEPARTMENT_ID <> manager.DEPARTMENT_ID;