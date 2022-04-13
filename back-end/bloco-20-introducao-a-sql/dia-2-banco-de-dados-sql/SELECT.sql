-- 1.1) Monte uma query que exiba seu nome na tela;
SELECT 'Clarice';

-- 1.2) Monte uma query que exiba seu nome, sobrenome, cidade natal e idade na tela;
SELECT 'Clarice', 'Oliveira', 'Belo Horizonte', '32';

/* 1.3) Monte uma query que, além de exibir todas as informações já mencionadas,
        identifique cada coluna usando o AS , que é chamado de alias na linguagem SQL
        ( alias é como um apelido no português); */
SELECT 'Clarice' AS nome, 'Oliveira' AS sobrenome, 'Belo Horizonte' AS 'cidade natal', '32' AS idade;
