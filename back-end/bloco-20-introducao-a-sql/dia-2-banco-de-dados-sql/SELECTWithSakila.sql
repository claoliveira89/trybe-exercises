-- No banco sakila:
-- 2.1) Escreva uma query que selecione todas as colunas da tabela city ;
SELECT * FROM sakila.city;

-- 2.2) Escreva uma query que exiba apenas as colunas first_name e last_name da tabela customer ;
SELECT first_name, last_name FROM sakila.customer;

-- 2.3) Escreva uma query que exiba todas as colunas da tabela rental ;
SELECT * FROM sakila.rental;

/* 2.4) Escreva uma query que exiba o título, a descrição e a data de lançamento dos filmes
        registrados na tabela film ; */
SELECT title, description, release_year FROM sakila.film;
