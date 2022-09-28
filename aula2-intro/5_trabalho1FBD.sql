create table alunos (
	matricula int primary key,
	id_cur int,
	nome varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	nasc date NOT NULL,
	ender varchar(100) NOT NULL,
	sex char(1) NOT NULL,
	foreign key (id_cur) references cursos(id_cur)
)

create table matriculas(
	matricula int NOT NULL,
	id_disc int NOT NULL,
	nota int,
	foreign key (matricula) references alunos(matricula)
	ON DELETE CASCADE,
	foreign key (id_disc) references disciplinas(id_disc)
	ON DELETE CASCADE
)

create table disciplinas (
	id_disc int primary key,
	nome varchar(50) NOT NULL,
	ementa varchar(200) NOT NULL,
	id_prof int NOT NULL,
	c_hor int NOT NULL,
	id_cur int NOT NULL,
	foreign key (id_prof) references professores,
	foreign key (id_cur) references cursos
)

CREATE TABLE cursos(
	id_cur INT,
	nome VARCHAR(50) NOT NULL,
	coordenador int NOT NULL,
	c_hor INT NOT NULL,
	id_cen int NOT NULL,
	PRIMARY KEY (id_cur),
	foreign key (id_cen) references centros(id_cen) ON DELETE CASCADE,
	foreign key (coordenador) references professores(id_prof) NOT NULL
)

create table professores (
	id_prof int,
	nome varchar(50) NOT NULL,
	email varchar(30) NOT NULL,
	grau char(1) NOT NULL,
	sexo char(1) NOT NULL,
	nasc date NOT NULL,
	id_reitor int unique,
	data_adm date,
	primary key (id_prof)
)

create table centros (
	id_cen int,
	nome varchar(50) NOT NULL,
	id_camp int NOT NULL,
	diretor int NOT NULL UNIQUE,
	primary key (id_cen),
	foreign key (diretor) references professores(id_prof)
)


create table campus (
	id_camp int,
	nome varchar(50) NOT NULL,
	cidade varchar(50) NOT NULL,
	primary key (id_camp)
)

create table turmas (
	id_turm int,
	id_disc int NOT NULL,
	semestre char(6) NOT NULL,
	estado char(1) NOT NULL,
	id_loc int NOT NULL,
	hor char(11) NOT NULL,
	dias varchar(50) NOT NULL,
	primary key (id_turm),
	foreign key (id_disc) references disciplinas(id_disc),
	foreign key (id_loc) references locais (id_loc)
)

create table locais (
	id_loc int,
	nome varchar(50) NOT NULL,
	bloco varchar(50),
	id_cen int NOT NULL,
	lot int NOT NULL,
	descr varchar (100) NOT NULL,
	tipo varchar(50) NOT NULL,
	primary key (id_loc),
	foreign key (id_cen) references centros(id_cen)
)