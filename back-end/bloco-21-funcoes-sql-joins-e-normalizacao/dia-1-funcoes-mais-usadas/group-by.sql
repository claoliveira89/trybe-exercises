/* 1.1) Monte uma query que exiba a quantidade de clientes cadastrados na tabela sakila.customer que estão
        ativos e a quantidade que estão inativos. */
SELECT active, COUNT(customer_id)FROM sakila.customer GROUP BY active;