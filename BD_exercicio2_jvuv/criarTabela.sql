
CREATE TABLE departamento (
	nome_depto varchar(50) not null,
	numero_depto varchar(10) not null,
	CONSTRAINT numero_depto_pk PRIMARY KEY (numero_depto)
);
commit;

CREATE TABLE professor (
	nome varchar(50) not null,
	siape number not null,
	categoria varchar(20) not null,
	salario number not null,
	cod_depto varchar(10) not null,
	CONSTRAINT siape_pk PRIMARY KEY (siape),
	CONSTRAINT cod_depto_fk1 FOREIGN KEY (cod_depto) REFERENCES departamento (numero_depto)
);
commit;

CREATE TABLE disciplina (
	nome varchar(50) not null,
	cod_disciplina varchar(10) not null,
	carga_horaria varchar(10) not null,
	CONSTRAINT cod_disciplina_pk PRIMARY KEY(cod_disciplina)
);
commit;

CREATE TABLE ministra (
	siape number not null,
	cod_disciplina varchar(10) not null,
	periodo varchar(6) not null,
	CONSTRAINT siape_cod_periodo_pk PRIMARY KEY (siape, cod_disciplina, periodo),
	CONSTRAINT siape_fk1 FOREIGN KEY (siape) REFERENCES professor (siape),
	CONSTRAINT cod_disciplina_fk2 FOREIGN KEY (cod_disciplina) REFERENCES disciplina (cod_disciplina)
);
commit;