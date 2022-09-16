# Modelo Conceitual

- Entidade
    - Representada por um retângulo no MER (Modelo Entidade Relacionamento) e geralmente por uma tabela no MR (Modelo Relacional).
    - A escolha para representar uma informação como Entidade é a partir da importância do objeto. Geralmente a importãncia aumenta de acordo com o número de Atributos e de informações daquele objeto.
    - Se um Atributo for mais complexo e tiver autonomia de existência, é interessante transformá-lo em Entidade.
        Exemplo: LIVROS. Possui ID, TÍTULO, EDIÇÃO, etc.  Possui também AUTOR. Mas um livro pode ter vários autores. Logo, seria interessante AUTOR ser uma Entidade, não mais um Atributo de LIVROS, que se relaciona por meio de um Relacionamento.

- Atributo
    - Uma característica de uma Entidade.
    - Podem ser chaves:
        - Chave primária: Atributo único distinto que não pode se repetir. Não pode ter duas ou mais chaves primárias. Identifica uma tupla da tabela. Ou no MER, identifica um objeto com várias características ligadas aquela chave primária.
        - Chave candidata: basicamente não pode se repetir, mas pode ter uma ou mais chaves candidatas, mas não assume o posto de atributo principal que referencia  uma tupla.
        - Chave estrangeira: é uma chave que está em uma outra entidade, mas também faz parte da entidade principal analisada. É meio que uma chave linkada que aponta pra outra tabela em outra chave, só que primária. Ela pode se repetir na tabela principal, mas não pode se repetir na tabela secundária. Basicamente ela faz a "ligação" de uma entidade para outra.

- Relacionamento
    - Associa Entidades.
    - Pode ter atributos bem simples, por exemplo, de limitações de quantidades.
    - Sempre usar relacionamento binário. Evitar usar ternário.

# Modelo Entidade-Relacionamento

- É um tipo de Modelo Conceitual de alto nível para modelar projetos de banco de dados.
- É o modelo mais conhecido e usado para modelar informações de forma abstrata.
- Os objetos também estão presentes aqui: Entidades, Atributos e Relacionamentos.

- Conjunto de Entidades
    - Quando a entidade está no plural, temos um conjunto de entidades. 
        - Ou seja, temos a entidade LIVRO. O conjunto de entidades disso seria LIVROS.
    - Normalmente é utilizado para dizer que uma entidade pode pertencer a duas entidades distintas. Por exemplo, FUNCIONÁRIOS podem trabalhar em duas entidades diferentes.

- Restrição de Chave
    - 