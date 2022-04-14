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
