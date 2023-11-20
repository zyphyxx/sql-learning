SELECT * FROM usuarios;

UPDATE usuarios SET email = 'novoemail@gmail.com' WHERE id = 2;


/*
ainda é referenciada pela tabela "reservas".
atualização ou exclusão em tabela "usuarios"
viola restrição de chave estrangeira
*/

DELETE FROM usuarios WHERE id = 2;
														