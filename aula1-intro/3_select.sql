INSERT INTO CLIENTE(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('CLARA', 'F', 'SENADOR SOARES - RJ', '883665843', '12345678901');

/* Comando Select: seleção, projeção e junção */

/* Mostra data e hora que a query foi feita */
SELECT NOW(); 

/* Mostra VICTOR MARTINS */
SELECT 'VICTOR MARTINS';

SELECT 'BANCO DE DADOS';

/* SHOW TABLES; é basicamente um select em um dicionário de dados */

/* Projeta data e hora com outro nome (DATA_HORA), e além disso mostra ao lado o meu nome de um tipo ALUNO  */
SELECT NOW() as DATA_HORA, 'VICTOR MARTINS' as ALUNO;

/* Projeção de NOME, SEXO e EMAIL de cada cliente. */
SELECT NOME, SEXO, EMAIL FROM CLIENTE;

/* Mudança temporária do atributo NOME para CLIENTES.  */
SELECT NOME AS CLIENTES, SEXO, EMAIL FROM CLIENTE;

/* Mudança na ordem dos atributos projetados */
SELECT EMAIL, SEXO, NOME AS CLIENTES FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;
