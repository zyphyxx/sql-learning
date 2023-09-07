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
        
       
        
        select nomeCliente, dataNascimento from clientes;
        
        -- SELECT UTILIZANDO APELIDO DO CLIENTE
        -- ass pode ser omitido porem boas praticas pede as
        
        select nomeCliente as 'Nome do Cliente',
        dataNascimento as 'Nascimento'
        from clientes;
        
        -- SELECT COM COLUNAS FALSAS
        
       use empresa;
       select * from clientes;
       
       -- SELECT COM COLUNAS FALSAS
       select nomeCliente as 'Nome do Cliente',
			sexoCliente as 'Sexo',
            ufNascimento as 'Estado',
            dataNascimento as 'Data de Nascimento',
            idCliente * 100 as 'Salario','Brasileiro' as 'Nacionalidade' from clientes;
            
		-- ORDENAÇÃO MAIOR LADRÃO DE PERFORMANCE
        
			select * from clientes order by ufNascimento;
			select * from clientes order by ufNascimento asc, dataNascimento desc;
            
            select * from clientes limit 3;
            select * from clientes limit 4,6;
            
            -- operadore de comparação
            
            select * from clientes where ufNascimento !='RJ';
            select * from clientes where idCliente >= 10;
            
            select * from clientes where idCliente < 10 and ufNascimento != 'SP';
            
            desc clientes;
            
            
    
    
    
