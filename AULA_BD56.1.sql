use empresa_xpto;

#criação da tabela departamento
create table departamento (
id int auto_increment,
nome varchar(60),
primary key (id)
);

drop table departamento;

#inserir valores na tabela departamento 
insert into departamento values (1, 'Financeiro');
insert into departamento values (2, 'Vendas');
insert into departamento values (3, 'Desenvolvimento de protudos');
insert into departamento values (4, 'TI');
insert into departamento values (5, 'Jurídico');
insert into departamento values (6, 'Qualidade');
insert into departamento values (7, 'Administração');
insert into departamento values (8, 'Atendimento ao cliente');
insert into departamento values (9, 'Recursos humanos');
insert into departamento values (10, 'Marketing');
insert into departamento values (11, 'Produção');
insert into departamento values (12, 'Executivo');
insert into departamento values (13, 'Gerente Financeiro');
insert into departamento values (14, 'Gerente de Markenting');
insert into departamento values (15, 'Gerente de Produção');

select * from funcionarios;
select * from departamento;
select * from funcionarios where id = 1;

#alteração da tabela funcionarios,
#adicionando uma coluna com seu id e sua chave estrangeira referente sua tabela e criação de um relacionamento entre funcionarios e departamento 
alter table funcionarios
add column id_departamento int,
add constraint fk_funcionarios_departamento
foreign key (id_departamento) references departamento(id);

#atualização do cadastro do funcionario pelo seu id para ser alocado no departamento financeiro
update funcionarios
set id_departamento = 1
where id = 1;

#utualização do cadastro do funcionarios com seu id para setor do departamento de 'VENDAS'
update funcionarios 
set id_departamento = 2
where id = 2 or id = 3 or id = 4 or id = 5;

#atualização do cadastro do funcionarios com seu id para o setor do departamento 'TI'
update funcionarios
set id_departamento = 4
where id = 6 or id = 7 or id = 8 or id = 9;

#atualização do cadastro do funcionarios com seu id para o setor de 'JURIDICO'
update funcionarios
set id_departamento = 5
where id = 10 or id = 11 or id = 12 or id = 13;

#atualização do cadastro do funcionarios com seu id para o setor de 'RECURSOA HUMANOS'
update funcionarios
set id_departamento = 9
where id =14 or id = 15 or id = 16 or id =17;

#descobrindo id do funcionario com maior salarios
select * from funcionarios where salario order by salario desc;

#atualiza o funcionario com maior salario para departamento 'EXECUTIVO'
update funcionarios 
set id_departamento = 12
where id = 44;

select * from funcionarios where salario order by salario desc;

#atualiza o funcionario com segundo maior salario para departamento'GERENTE FINANCEIRO'
update funcionarios
set id_departamento = 13
where id = 413;

#atualiza o funcionario com terceiro maior salario para departamento'GERENTE DE PRODUÇÂO'
update funcionarios
set id_departamento = 15
where id = 642;

#atualiza o funcionario com quarto maior salario para departamento'GERENTE DE MARKETING'
update funcionarios
set id_departamento = 14
where id = 462;





