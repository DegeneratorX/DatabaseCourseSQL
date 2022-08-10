CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF VARCHAR(11), /* Mudei pra VARCHAR, explicação logo logo abaixo */
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
);


/* Para inserir valores, por hora copiar os comandos abaixo no terminal do mysql */

/* FORMA 1 - Sem precisar especificar as colunas */

INSERT INTO CLIENTE VALUES('JOAO', 'M', 'JOAO@GMAIL.COM', '988638273', '22923110', 'RIO - RJ');
/* OBS: Mudei o CPF de INT para VARCHAR, pois INT suporta até 10 dígitos, e até 2147483647. */

INSERT INTO CLIENTE VALUES('CELIA', 'F', 'CELIA@GMAIL.COM', '541521456', '25078869', 'SAO PAULO - SP');

INSERT INTO CLIENTE VALUES('JORGE', 'M', NULL, '885755796', '58748895', 'BH - MG');


/* FORMA 2 - Especificando as colunas (chaves), assim posso alterar a ordem que coloco valores */

INSERT INTO CLIENTE(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('LILIAN', 'F', 'FORT - CE', '947785696', '887774856');
/* Se eu não especificar um valor, vai NULL*/

/* FORMA 3 (MySQL Exclusivo) - Insert compacto */

INSERT INTO CLIENTE VALUES('ANA', 'F', 'ANA@GLOBO.COM', '85548962', '548556985', 'NATAL - RN'), ('CARLA', 'F', 'CARLA@OUTLOOK.COM', '7745828', '66587458', 'PORTO ALEGRE - RS');
