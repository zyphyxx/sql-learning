drop database cadastro;
create database cadastros;
create table cursos1 (
idcurso int auto_increment primary key,
nome varchar (30) not null,
descricao text,
carga int,
totaulas int,
ano year);

describe cursos1;

insert into cursos1 values
('1','HTML4','CURSO DE HTML5', '40','37',2014),
('2', 'ALGORITMOS','LOGICA DE PROGRAMACAO', '20','15',2014),
('3',' PHOTOSHOP', 'DICAS DE PHOTOSHOP CC','10','8',2014),
('4', 'PGP', 'CURSO DE PHP PARA INICIANTES','40','20',2010),
('5','JARVA','INTRODUCAO A LINGUAGEM JAVA','10','29',2000),
('6','MYSQL','BANCOS DE DADOS MYSQL','30','15',2016),
('7','WORD','CURSO COMPLETO DE WORD','40','30',2016),
('8','SAPATEANDO','DANCAS RITMICAS','40','30',2018),
('9','COZINHA ARABE ','APRENDA A FAZER KIBE','40','3O',2018),
('10','YOUTUBER','GERAR POLEMICA E GANHAR INDCRITOS','5','2',2018);