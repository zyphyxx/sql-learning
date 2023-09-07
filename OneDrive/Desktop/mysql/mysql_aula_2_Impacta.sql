select * from clientes;

	insert into clientes 
		values
        (null,'Jose Carlos','M','SP','19951203'),
        (null,'Manoel Carlos','M','SP','1998@08@15'),
        (null,'João Antonio','M','RJ','1997-05-23'),
        (null,'Antonio Marcos','M','SP','1996-09-16'),
        (null,'Nilvan','m','SC','2022-09-11'),
        (null,'Jose Carlos','M','SP','19951203'),
        (null,'Manoel Carlos','M','SP','1998@08@15'),
        (null,'João Antonio','M','RJ','1997-05-23'),
        (null,'Antonio Marcos','M','SP','1996-09-16'),
        (null,'Nilvan','m','SC','2022-09-11'),
        (null,'Jose Carlos','M','SP','19951203'),
        (null,'Manoel Carlos','M','SP','1998@08@15'),
        (null,'João Antonio','M','RJ','1997-05-23'),
        (null,'Antonio Marcos','M','SP','1996-09-16'),
        (null,'Nilvan','m','SC','2022-09-11');
        
        
        -- 	DQL DATA QUERY LANGUAGE - SELECT
        
        select * from clientes; -- um select simples
        
        select nomeCliente, dataNascimento from clientes;
        
        -- SELECT UTILIZANDO APELIDO DO CLIENTE
        -- ass pode ser omitido porem boas praticas pede as
        
        select nomeCliente as 'Nome do Cliente',
        dataNascimento as 'Nascimento'
        from clientes;
        
        
	
    desc clientes;
