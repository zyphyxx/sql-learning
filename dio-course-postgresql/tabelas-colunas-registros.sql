DROP TABLE usuarios;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL ,
    email VARCHAR(100),
    endereco VARCHAR(50) ,
    data_nascimento DATE 
);

CREATE TABLE destino (
	id SERIAL PRIMARY KEY,
	nome VARCHAR (255),
	descricao TEXT
);

CREATE TABLE reservas (
    id SERIAL PRIMARY KEY,
   	idUsuario INT REFERENCES Usuarios(id),
	idDestino int REFERENCES Destino(id),
	status VARCHAR (255)
	
);




	