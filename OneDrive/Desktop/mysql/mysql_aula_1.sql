describe alunos;

alter table alunos
add column profissao varchar (10) after nome;

alter table alunos
add codigo int first;

alter table alunos
modify column profissao varchar (20);

alter table alunos
change column profissao prof varchar(20);



alter table alunos
drop column profissao;

select * from alunos;



