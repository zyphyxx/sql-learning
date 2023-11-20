INSERT INTO usuarios (nome,
					  email,
					  data_nascimento,
					  endereco)
					  VALUES ('Joao',
							  'joao@gmail.com',
							  '1971-01-01',
							  'Rio');
							  
							  SELECT * FROM usuarios;

INSERT INTO destino (nome,
					  descricao)
					  VALUES ('Praia Amarela'
							  ,'Praia Mais ou menos');
							  
							  	SELECT * FROM destino;
							
INSERT INTO reservas (idusuario,
					 iddestino,
					 status
					 ) VALUES (3,
							  3,
							  'pendente');
							  
							  SELECT * FROM reservas;
														