-- Questao 1
select * from professor;

--Questao 2
select * from professor where nome = 'Maria' and siape = 1234 and categoria = 'Adjunto 1' and  salario = 1000 and cod_depto = 'D001';
select * from professor where nome = 'Pedro' and siape = 5678 and categoria = 'Adjunto 2' and  salario = 2000 and cod_depto = 'D001';
select * from professor where nome = 'Jose' and siape = 1122 and categoria = 'Adjunto 1' and  salario = 1500 and cod_depto = 'D003';
select * from professor where nome = 'Carlos' and siape = 5522 and categoria = 'Adjunto 1' and  salario = 1500 and cod_depto = 'D003' ;

--Questao 3
select * from professor where salario > 1400;

--Questao 4
select * from professor where salario > 1400 and cod_depto = 'D001' ;

--Questao 5
select distinct categoria from professor ;

--Questao 6
select * from professor order by NOME;

--Questao 7
select * from professor order by salario DESC;

--Questao 8
select P.nome from professor P, departamento D where D.numero_depto = 'D001' and P.cod_depto = D.numero_depto;

--Questao 9
select P.nome from professor P, disciplina I, departamento D where D.numero_depto = 'D001' and I.cod_disciplina = 'IF973' and P.cod_depto = D.numero_depto and P.salario > 1000;

--Questao 10
select * from professor where salario between 1200 and 1900;

--Questao 11
select nome, ((1.1*salario)/2) as salario_aumentado from professor where categoria = 'Adjunto 1';
select nome, ((0.8*salario)/2) as salario_diminuido from professor where categoria = 'Adjunto 2';

--Questao 12
select * from disciplina where cod_disciplina like 'IF97_';

--Questao 13
select distinct P.nome from professor P, disciplina D where D.nome in ('Banco de Dados', 'Fundamentos de SI');