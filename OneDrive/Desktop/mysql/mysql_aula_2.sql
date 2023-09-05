create table if not exists cursos (
nome varchar (30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2023' );

alter table cursos
add column idcurso int first;

alter table cursos add primary key (idcurso);

select* from cursos;
describe cursos;
