SELECT * FROM usuarios;

ALTER TABLE usuarios ADD COLUMN
rua VARCHAR (100),
ADD numero VARCHAR (10),
ADD cidade VARCHAR (50),
ADD estado VARCHAR (20);

ALTER TABLE usuarios DROP COLUMN endereco;

ALTER TABLE usuarios ADD COLUMN endereco VARCHAR;
