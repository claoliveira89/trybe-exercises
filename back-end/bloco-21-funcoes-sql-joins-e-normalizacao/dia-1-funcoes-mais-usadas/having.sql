/* 1.1) Usando a query a seguir, exiba apenas as durações médias que estão entre 115.0 a 121.50.
        Além disso, dê um alias (apelido) à coluna gerada por AVG(length) , de forma que deixe a query
        mais legível. Finalize ordenando os resultados de forma decrescente.
            SELECT rating, AVG(length)
            FROM sakila.film
            GROUP BY rating;
        */
SELECT rating, AVG(length) AS duracao_media
FROM sakila.film
GROUP BY rating
HAVING duracao_media > 115.0 AND duracao_media < 121.50
ORDER BY duracao_media DESC;