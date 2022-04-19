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