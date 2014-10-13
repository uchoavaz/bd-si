INSERT INTO departamento (nome_depto, numero_depto) VALUES ('Informação e Sistemas', 'D003');
INSERT INTO departamento (nome_depto, numero_depto) VALUES ('Tecnologia da Informação', 'D001');
commit;

INSERT INTO professor (nome, siape, categoria, salario, cod_depto) VALUES ('Maria', 1234, 'Adjunto 1', 1000, 'D001');
INSERT INTO professor (nome, siape, categoria, salario, cod_depto) VALUES ('Pedro', 5678, 'Adjunto 2', 2000, 'D001');
INSERT INTO professor (nome, siape, categoria, salario, cod_depto) VALUES ('Jose', 1122, 'Adjunto 1', 1500, 'D003');
INSERT INTO professor (nome, siape, categoria, salario, cod_depto) VALUES ('Carlos', 5522, 'Adjunto 1', 1500, 'D003');
commit;

INSERT INTO disciplina (nome, cod_disciplina, carga_horaria) VALUES ('Banco de Dados', 'IF976', '60h');
INSERT INTO disciplina (nome, cod_disciplina, carga_horaria) VALUES ('Programação 2', 'IF992', '60h');
INSERT INTO disciplina (nome, cod_disciplina, carga_horaria) VALUES ('Fundamentos de SI', 'IF973', '75h'); 
commit;

INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (1234, 'IF973', '2013.1');
INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (1234, 'IF973', '2013.2');
INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (1234, 'IF992', '2013.1');
INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (1234, 'IF976', '2013.1');
INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (5678, 'IF973', '2013.2');
INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (1122, 'IF973', '2013.2');
INSERT INTO ministra (siape, cod_disciplina, periodo) VALUES (5678, 'IF976', '2013.1');
commit;

