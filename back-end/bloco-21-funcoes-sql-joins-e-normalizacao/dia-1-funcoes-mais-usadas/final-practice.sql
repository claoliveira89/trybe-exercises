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

/* 1.4) Escreva uma query que exiba a quantidade de dinheiro necessária para realizar o pagamento de
        todas as pessoas funcionárias.*/
SELECT SUM(SALARY) FROM hr.employees;

/* 1.5) Escreva uma query que exiba quatro informações: o maior salário, o menor salário, a soma de
        todos os salários e a média dos salários. Todos os valores devem ser formatados para ter apenas
        duas casas decimais.*/
SELECT 
    ROUND(MAX(SALARY), 2),
    ROUND(MIN(SALARY), 2),
    ROUND(SUM(SALARY), 2),
    ROUND(AVG(SALARY), 2) 
FROM hr.employees;

/* 1.6) Escreva uma query que exiba a quantidade de pessoas que trabalham como pessoas programadoras
        ( IT_PROG ).*/
SELECT COUNT(*) FROM hr.employees WHERE JOB_ID = 'IT_PROG';

/* 1.7) Escreva uma query que exiba a quantidade de dinheiro necessária para efetuar o pagamento de
        cada profissão ( JOB_ID )*/
SELECT JOB_ID, SUM(SALARY) FROM hr.employees GROUP BY JOB_ID;

/* 1.8) Utilizando a query anterior, faça as alterações para que seja exibido somente a quantidade de
        dinheiro necessária para cobrir a folha de pagamento das pessoas programadoras ( IT_PROG ).*/
SELECT JOB_ID, SUM(SALARY) FROM hr.employees GROUP BY JOB_ID HAVING JOB_ID = 'IT_PROG';

/* 1.9) Escreva uma query que exiba em ordem decrescente a média salarial de todos os cargos, exceto
        das pessoas programadoras ( IT_PROG ).*/
SELECT JOB_ID, AVG(SALARY) AS media_salarial
FROM hr.employees
GROUP BY JOB_ID
HAVING JOB_ID <> 'IT_PROG'
ORDER BY media_salarial DESC;

/* 1.10) Escreva uma query que exiba média salarial e o número de funcionários de todos os departamentos
         com mais de dez funcionários. Dica: agrupe pelo department_id .*/
SELECT DEPARTMENT_ID, AVG(SALARY), COUNT(EMPLOYEE_ID) AS numero_funcionarios
FROM hr.employees
GROUP BY DEPARTMENT_ID
HAVING numero_funcionarios > 10;

/* 1.11) Escreva uma query que atualize a coluna PHONE_NUMBER , de modo que todos os telefones
         iniciados por 515 agora devem iniciar com 777 .*/
UPDATE hr.employees
SET phone_number = REPLACE(phone_number, '515', '777')
WHERE phone_number LIKE '515%';

/* 1.12) Escreva uma query que só exiba as informações dos funcionários cujo o primeiro nome tenha
         oito ou mais caracteres.*/
SELECT * FROM hr.employees WHERE CHAR_LENGTH(FIRST_NAME) >= 8;

/* 1.13) Escreva uma query que exiba as seguintes informações de cada funcionário: id , primeiro nome
         e ano no qual foi contratado (exiba somente o ano).*/
SELECT EMPLOYEE_ID AS id, FIRST_NAME AS 'primeiro nome', YEAR(HIRE_DATE) AS 'ano do contrato'
FROM hr.employees;

/* 1.14) Escreva uma query que exiba as seguintes informações de cada funcionário: id , primeiro nome
         e dia do mês no qual foi contratado (exiba somente o dia).*/
SELECT EMPLOYEE_ID AS id, FIRST_NAME AS 'primeiro nome', DAY(HIRE_DATE) AS 'dia do contrato'
FROM hr.employees;