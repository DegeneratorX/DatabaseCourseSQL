# DatabaseCourseSQL
Repositório contendo projetos de um curso de Banco de Dados e SQL da Udemy.

- CONCEITOS FUNDAMENTAIS

    - Query
        - Consulta

    - DB ou BD (Database ou Banco de Dados)
        - Armazena dados para trazer informação.

    - DA (Data Administrator)
        - O nome já diz.

    - Database Administrator (DBA)
        - Responsável pela criação, instalação, análise e manutenção de banco de dados.

    - BI (Business Intelligence)
        - Visualização de dados e tomada de decisões

    - Data Science
        - Vẽ o passado e prevê o futuro baseado nos dados do passado.

    - Tuning
        - Responsável por melhorar o algoritmo e a query na busca por dados no banco de dados, e a performance do banco no geral. É aplicado em todos os casos: DA, DBA, BI e DS.

- DIFERENÇA ENTRE CHAR E VARCHAR
    - CHAR (Caractere): Basicamente 1 caractere ocupa 8 bits, 1 byte. O CHAR é estático, então sempre terá o número de caracteres definido pelo usuário. Ou seja, o número de bytes usados para aquele atributo sempre será fixo. Aplicação: sexo (M, F), Estado com duas siglas (CE, MG, RJ).

    - VARCHAR: (Caractere Variável): Dinâmico, varia o uso de bytes conforme a necessidade. Se muda de João pra Maria, o uso passa de 4 pra 5 bytes. Se usado CHAR, ficaria 'Mari'. Aplicação: Nomes, endereços.

    - Sempre usar VARCHAR então? Não. Pois o VARCHAR exige mais processamento, pois há sempre a necessidade de verificar e alterar os bytes usados caso haja variação de tamanho do dado. Enquanto que CHAR o algoritmo não passa por essa verificação.

- INT vs VARCHAR
    - As vezes o número é tão grande que é impossível haver um cálculo preciso sobre isso. Exemplo, CPF tem 11 dígitos. Para isso, usamos VARCHAR.

- SGBD (Sistem de Gerenciamento de Banco de Dados)
    - Sistema de software responsável pelo gerenciamento de um ou mais bancos de dados.

- PRINCIPAIS KEYWORDS
    - Criação:
        - CREATE DATABASE 'Algo': Cria a database
        - USE 'Algo': Troca a database. Por default, ela está em uma database mestre.

    - Inserção:
        - INSERT: inserção
        - INTO 'Algo': dentro de algo
        - VALUES(x,'y',z): valores
        - Exemplo de uso básico: INSERT INTO CLIENTE(NOME, IDADE) VALUES ('VICTOR', 25)

    - Consulta (Query):
        - SHOW 'Algo': Query em todos os atributos de uma database específica (como se fosse mostrar todos os construtores de uma Classe específica em POO)
        - SHOW databases: Query em todos os bancos de dados criados até então (como se fosse mostrar todas as Classes criadas)

        - SELECT: Query em algum dado específico da database(como se fosse mostrar um ou mais atributos específico de uma instância)
        - SELECT *: Query em TODOS os dados de uma database.
        - FROM: Geralmente é um complemento de SELECT para dizer de qual DB será consultado.
        - SELECT NOW()