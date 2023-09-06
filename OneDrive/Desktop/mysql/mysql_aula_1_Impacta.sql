create database if not exists empresa;

use empresa;

create table if not exists clientes(
	idCliente int not null primary key auto_increment,
    nomeCliente varchar (30) not null,
    sexoCliente enum ('M', 'F'),
    ufNascimento char (2),
    dataNascimento date
	);
    
    desc clientes;
    
    -- DATA MANIPULATION LANGUAGE
    -- INSERT UPADATE DELETE
    
    -- INSERT DECLARATORIO - DECLARO OS CAMPOS QUE RECEBER
    
    insert into clientes (nomeCliente,sexoCliente,ufNascimento,dataNascimento)
		values
        ('Alem Mar Paranhos','M','SP','1995-05-30');
	
    insert into clientes (nomeCliente,sexoCliente)
		values
        ('Suzana Maria','M');
	
   -- INSERT POSICIONAL
   
	insert into clientes values
		(null,'Jussara Paula','F','SC', '2000-05-21');
	
    insert into clientes values
		(null,'João Carlos','M' , null, null);
        
	-- DECLARATORIO
    
		insert into clientes (nomeCliente,SexoCliente) 
				values 
                ('Suzi Rego','F'), 
                ('Ana Melo', 'F'), 
                ('Jorge Freitas', 'M'); 
                
	update clientes 
		set 
        dataNascimento = '2000-07-12', 
        ufNascimento = 'PR'
        where idCliente =7;
        
	update clientes
		set
        ufNascimento = 'RJ',
        dataNascimento = '2002-07-12' where idCliente = 4;
        
	update clientes
		set
        ufNascimento = 'MG' where ufNascimento is null;
		
        
        select * from clientes;
        
        
        
    
    
    
    
    

    
    
