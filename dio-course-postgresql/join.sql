SELECT * FROM usuarios
INNER JOIN reservas ON usuarios.id = reservas.idusuario
INNER JOIN destino ON reservas.iddestino = destino.id ;

INSERT INTO usuarios (nome,email) values ('Dio', 'dio@gmail.com');

SELECT * FROM usuarios as us
LEFT JOIN reservas as rs ON us.id = rs.idusuario;

SELECT * FROM destino;
INSERT INTO destino (nome, descricao) VALUES ('bertioga', 'praia de bertioga');

SELECT * FROM reservas as rs
RIGHT JOIN destino ds
ON rs.iddestino = ds.id;



