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

/* 1.2) Usando a query a seguir, exiba apenas os valores de total do custo de substituição que estão
        acima de $3950.50. Dê um alias que faça sentido para SUM(replacement_cost) , de forma que deixe
        a query mais legível. Finalize ordenando os resultados de forma crescente.
            SELECT rating, SUM(replacement_cost)
            FROM sakila.film
            GROUP by rating;
        */
SELECT rating, SUM(replacement_cost) AS custo_total_substituicao
FROM sakila.film
GROUP by rating
HAVING custo_total_substituicao > 3950.50
ORDER BY custo_total_substituicao ASC;