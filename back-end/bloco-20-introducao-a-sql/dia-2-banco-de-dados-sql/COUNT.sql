-- Na tabela staff do banco de dados sakila:
-- 1.1) Quantas senhas temos cadastradas nessa tabela?
SELECT COUNT(password) FROM sakila.staff;
        -- RESPOSTA: 1
-- 1.2) Quantas pessoas temos no total trabalhando para nossa empresa?
SELECT COUNT(active) FROM sakila.staff WHERE  active = '1';
        -- RESPOSTA: 2
