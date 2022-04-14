/* 1.1) Na tabela sakila.film , monte uma query que exiba o título e o ano de lançamento dos filmes
        em uma coluna e dê a ela o nome Lançamento do Filme . */
SELECT CONCAT (title, ' - ', release_year) AS 'Lançamento do Filme' FROM sakila.film;