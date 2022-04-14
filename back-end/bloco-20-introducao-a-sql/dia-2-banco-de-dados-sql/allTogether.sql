-- Para os exercícios a seguir, vamos usar a tabela sakila.film
-- 1.1) Escreva uma query que exiba todos os filmes cadastrados no banco de dados.
SELECT title FROM sakila.film;

-- 1.2) Escreva uma query que exiba apenas o nome dos filmes, seu ano de lançamento e sua classificação.
SELECT title, release_year, rating FROM sakila.film;

-- 1.3) Quantos filmes temos cadastrados?
SELECT COUNT(*) FROM sakila.film;
        -- RESPOSTA: 1000

-- Para os exercícios a seguir, vamos usar a tabela sakila.actor
-- 2.1) Escreva uma query que exiba apenas os sobrenomes únicos cadastrados.
SELECT DISTINCT last_name FROM sakila.actor;

-- 2.2) Quantos sobrenomes únicos temos na tabela?
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;
        -- RESPOSTA: 121

-- 2.3) Ordene os valores na tabela em ordem crescente de sobrenomes e em ordem decrescente de nome.
SELECT * FROM sakila.actor ORDER BY last_name ASC, first_name DESC;

/* 2.4) Vá até a tabela language do sakila e crie uma pesquisa que mostre os 5 idiomas cadastrados,
        mas não mostre o idioma english . */
SELECT * FROM sakila.language LIMIT 5 OFFSET 1;
