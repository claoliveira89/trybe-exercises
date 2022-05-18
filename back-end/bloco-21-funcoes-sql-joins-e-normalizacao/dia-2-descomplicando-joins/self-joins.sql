-- Tente encontrar as seguintes informações, utilizando o schema hr -- 
/* 1.1) Queremos saber o Nome das pessoas colaboradoras e suas respectivas gerências (manager) cujos
        departamentos (department) são diferentes.*/
SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome Colaborador',
       CONCAT(manager.FIRST_NAME, ' ', manager.LAST_NAME) AS 'Nome Gerente'
FROM hr.employees AS employee
INNER JOIN hr.employees AS manager
ON employee.MANAGER_ID = manager.EMPLOYEE_ID
WHERE employee.DEPARTMENT_ID <> manager.DEPARTMENT_ID;

/* 1.2) Exiba o Nome e a quantidade de pessoas lideradas de cada pessoa gerente.*/
SELECT CONCAT(manager.FIRST_NAME, ' ', manager.LAST_NAME) AS 'Pessoa Gerente',
       COUNT(*) AS 'Pessoas Lideradas'
FROM hr.employees AS manager
INNER JOIN hr.employees AS employee
ON employee.MANAGER_ID = manager.EMPLOYEE_ID
GROUP BY manager.EMPLOYEE_ID;