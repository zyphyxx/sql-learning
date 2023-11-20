
	-- Criando nova tabela --

CREATE TABLE usuarios_nova (
  id INT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  endereco VARCHAR(100) NOT NULL 
);	
	
	-- Migrando os dados --

INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento
FROM usuarios;

	SELECT * FROM usuarios_nova;
	DROP TABLE usuarios;
	
	-- Alter Table: renomeando a tabela --
	ALTER TABLE usuarios_nova RENAME TO usuarios_renomeada;
	
	-- Alter Table: alterando o tipo --
	ALTER TABLE usuarios_renomeada ALTER COLUMN endereco TYPE VARCHAR(150);

	