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