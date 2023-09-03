create database cadastro
default character set utf8 
default collate utf8_general_ci;

create table pessoas (
	id int not null auto_increment,
	nome varchar (30) not null,
    nacimento date,
    sexo enum ('Masculino', 'Feminino'),
    peso decimal (5 , 2),
    nacionalidade varchar (20) default 'Brasil',
    primary key (id)
) default charset = utf8;