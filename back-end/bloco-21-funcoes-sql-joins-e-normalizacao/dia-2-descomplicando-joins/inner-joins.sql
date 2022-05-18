/* 1.1) Monte uma query que exiba o id do ator , nome do ator e id do filme em que ele já atuou usando
        as tabelas actor e film_actor .*/
SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name), f.film_id
FROM sakila.actor AS a
INNER JOIN sakila.film_actor AS f
ON a.actor_id = f.actor_id;

/* 1.2) Use o JOIN para exibir o nome , sobrenome e endereço de cada um dos funcionários do banco.
        Use as tabelas staff e address .*/
SELECT CONCAT(s.first_name, ' ', s.last_name) AS 'Nome Completo', 
       CONCAT(a.address, ', ', a.district, '. ', a.postal_code) AS Endereço
FROM sakila.staff AS s
INNER JOIN sakila.address AS a
ON s.address_id = a.address_id;

/* 1.3) Exiba o id do cliente , nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem
        decrescente, juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas
        informações podem ser encontradas nas tabelas customer e address .*/
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS Nome, c.email AS email,
       c.address_id, a.address
FROM sakila.customer AS c
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id
ORDER BY Nome DESC LIMIT 100;

/* 1.4) Exiba o nome , email , id do endereço , endereço e distrito dos clientes que moram no distrito
        da California e que contêm "rene" em seus nomes. As informações podem ser encontradas nas
        tabelas address e customer .*/
SELECT CONCAT(c.first_name, ' ', c.last_name) AS Nome, c.email AS email, c.address_id, 
       a.address, a.district
FROM sakila.customer AS c
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id
WHERE a.district = 'California' AND a.first_name LIKE '%rene%';

/* 1.5) Exiba o nome e a quantidade de endereços dos clientes cadastrados. Ordene seus resultados por
        nomes de forma decrescente. Exiba somente os clientes ativos. As informações podem ser
        encontradas na tabela address e customer .*/
SELECT c.first_name, COUNT(a.address)
FROM sakila.address AS a
INNER JOIN sakila.customer AS c
ON a.address_id = c.address_id
WHERE c.active = 1 GROUP BY c.customer_id ORDER BY first_name DESC, last_name DESC;

/* 1.6) Monte uma query que exiba o nome, sobrenome e a média de valor (amount) paga aos funcionários
        no ano de 2006. Use as tabelas payment e staff. Os resultados devem estar agrupados pelo nome
        e sobrenome do funcionário.*/
SELECT CONCAT(s.first_name, ' ', s.last_name) AS Nome, AVG(p.amount) AS 'Média de valor'
FROM sakila.staff AS s
INNER JOIN sakila.payment AS p
ON s.staff_id = p.staff_id
WHERE YEAR(p.payment_date) = 2006
GROUP BY Nome;

/* 1.7) Monte uma query que exiba o id do ator, nome, id do filme e título do filme, usando as tabelas
        actor, film_actor e film. Dica: você precisará fazer mais de um JOIN na mesma query.*/
SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name), f.film_id, f.title
FROM sakila.actor AS a
INNER JOIN sakila.film AS f
INNER JOIN sakila.film_actor AS fa
ON a.actor_id = fa.actor_id AND f.film_id = fa.film_id;