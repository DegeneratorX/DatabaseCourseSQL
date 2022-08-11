/*
Um cliente solicitou uma tabela para armazenar os livros que são comercializados
pela empresa. A solicitação é somente para livros e não há a necessidade de
realizar busca em outras tabelas.

Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses
registros, mas as buscas estão ficando complexas. Decidiu-se, então, criar um
banco de dados separado para esse funcionário.

Após a criação da tabela, deveremos entregar algumas queries prontas para que
sejam enviadas para o programador. As queries são as seguintes:
1 - Trazer todos os dados.

2 - Trazer o nome do livro e o nome da editora

3 - Trazr o nome do livro e a UF dos livros publicados por autores do sexo masc.

4 - Trazer o nome do livro e o número de páginas dos livros publicados por
autores do sexo feminino.

5 - Trazer os valores dos livros das editoras de São Paulo.

6-  Trazer os dados dos autores do sexo masculino que tiveram livros publicados
por São Paulo ou Rio de Janeiros

Atributos:
Nome do Livro
Nome do Autor
Sexo do Autor
Número de Páginas
Nome da Editora
Valor do Livro
Estado (UF) da Editora
Ano de Publicação do Livro
*/

CREATE DATABASE LIVRARIA

USE LIVRARIA

CREATE TABLE LIVROS(
    VARCHAR NOME,
    VARCHAR AUTOR,
    CHAR SEXO,
    INT PAGINAS,
    VARCHAR NOME_EDITORA
    FLOAT VALOR
    CHAR UF
    CHAR ANO
)

/* Primeira Questão */
SELECT * FROM CLIENTES

