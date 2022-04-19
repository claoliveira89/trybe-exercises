/* Para realizar os exercícios propostos para o dia, faremos uso da tabela employees do banco de dados
   hr. */ 
-- 1.1) Escreva uma query que exiba o maior salário da tabela.
SELECT MAX(SALARY) FROM hr.employees;

-- 1.2) Escreva uma query que exiba a diferença entre o maior e o menor salário.
SELECT MAX(SALARY) - MIN(SALARY) FROM hr.employees;

/* 1.3) Escreva uma query que exiba a média salarial de cada JOB_ID , ordenando pela média salarial em
        ordem decrescente.*/
SELECT JOB_ID, AVG(SALARY) AS media_salarial
FROM hr.employees
GROUP BY JOB_ID
ORDER BY media_salarial DESC;