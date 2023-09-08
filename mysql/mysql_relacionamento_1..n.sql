create table funcionarios (
							fun_id int auto_increment,
                            fun_nome varchar (60) not null,
                            fun_sexo enum ('M','F'),
                            fun_salario decimal (10,2),
							car_id int not null,
                            
                            primary key (fun_id),
                            foreign key (car_id) references cargos (car_id)
							);

create table cargos (
					car_id int auto_increment,
                    car_nome varchar (60),
                    
                    primary key (car_id)
                      );
                      
insert into cargos (car_nome) values ('Medico'),('Jornalista'),('Arquiteto'),('Radialista');

insert into funcionarios (fun_nome,fun_salario,car_id) 
								values 
                                ('Luis Melodia',6500.00,2),
                                ('Luis Airao',7850.00,3),
                                ('Luis Tatit',3268.00,2),
                                ('Marcos de Barros', 9854.00,1),
                                ('Elton Soares',1234.00,2),
                                ('Milton Cruz',8521.00,3),
                                ('Sandro Bueno',3578.00,2),
                                ('Ivan Narciso',4415.00,1);

desc cargos;
desc funcionarios;
select * from cargos;
select * from funcionarios;