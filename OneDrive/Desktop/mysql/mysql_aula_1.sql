create database cadastro_academia default collate utf8_general_ci;

select * from alunos;

	create table alunos (
		id  int not null auto_increment primary key,
        nome varchar (30) not null,
        nascimento date,
        sexo enum ('M', 'F'),
        peso decimal (5 , 2),
        altura decimal (3 , 2),
        nacionalidade varchar (15) default ('Brasil')
    ) default charset = utf8;

	insert into alunos (nome, nascimento, sexo, peso, altura, nacionalidade) values ('Godofredo','1984-01-02','M', '78.50', '1.83','Russia');
    insert into alunos (nome, nascimento, sexo, peso, altura, nacionalidade) values ('Maria', '1992-12-30', 'F', '55.2', '1.65', 'Portugal');
	insert into alunos (nome, nascimento, sexo, peso, altura, nacionalidade) values ('Creuza', '1920-12-30', 'F', '50.2', '1.72', default);
	
    insert into alunos values (DEFAULT, 'Adalgiza', '1930-11-2', 'F', '63.50' , '1.78' , 'Irlanda' );

	select * from alunos;



