/* Para realizar os exercícios propostos para o dia, faremos uso da tabela employees do banco de dados
   hr. */ 
-- 1.1) Escreva uma query que exiba o maior salário da tabela.
SELECT MAX(SALARY) FROM hr.employees;

-- 1.2) Escreva uma query que exiba a diferença entre o maior e o menor salário.
SELECT MAX(SALARY) - MIN(SALARY) FROM hr.employees;