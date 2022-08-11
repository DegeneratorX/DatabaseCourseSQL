/* Filtragem por coluna */
SELECT * FROM CLIENTE;

/* "Filtragem" por linha: Uso de WHERE */
/* Pra não gerar confusão: SELECT faz projeção. WHERE faz seleção. */

SELECT NOME, SEXO FROM CLIENTE WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE WHERE SEXO = 'F';

/* Resultará em nada, pois a string 'RJ' é diferente de Rio - RJ, por exemplo. */
SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO = 'RJ';

/* Pra resolver isso, usamos o operador LIKE, que busca dentro de uma string uma palavra chave */

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE 'RJ';

/* Sim, continua empty. Pois precisamos adicionar isso aqui: */
/* CARACTER CORINGA % -> QUALQUER COISA. Ou seja, tudo que estiver antes de RJ, é representado pelo % */

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE '%RJ';
