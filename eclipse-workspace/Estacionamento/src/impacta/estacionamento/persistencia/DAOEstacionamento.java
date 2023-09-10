package impacta.estacionamento.persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

import impacta.estacionamento.controle.EstacionamentoException;
import impacta.estacionamento.negocio.Movimentacao;
import impacta.estacionamento.negocio.Vaga;
import impacta.estacionamento.utilitario.EstacionamentoUtil;

/**
 * Representa a camada de persistencia da aplicação. realiza o mapeamento
 * objeto-relacional.
 * 
 */

public class DAOEstacionamento {

	/**
	 * Armazena os dados da movimentação
	 * 
	 * @param movimentacao instancia de movimentacao
	 * @throws EstacionamentoException  se houver erro de registro
	 * 
	 */

	public void criar(Movimentacao movimentacao) throws EstacionamentoException {
		String cmd1 = EstacionamentoUtil.get("insertMov");
		String cmd2 = EstacionamentoUtil.get("atualizaVaga");

		Connection conexao = null;
		try {
			conexao = getConnection();
			conexao.setAutoCommit(false);

			PreparedStatement stmt = conexao.prepareStatement(cmd1);
			stmt.setString(1, movimentacao.getVeiculo().getPlaca());
			stmt.setString(2, movimentacao.getVeiculo().getMarca());
			stmt.setString(3, movimentacao.getVeiculo().getModelo());
			stmt.setString(4, movimentacao.getVeiculo().getCor());
			stmt.setString(5, EstacionamentoUtil.getDataAsString(movimentacao.getDataHoraEntrada()));

			stmt.execute();
			stmt = conexao.prepareStatement(cmd2);
			stmt.setInt(1, Vaga.ocupadas() + 1);
			stmt.execute();

			conexao.commit();
		} catch (SQLException e) {
			try {
				conexao.rollback();
				throw new EstacionamentoException ("Erro ao registrar veiculo");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

	}

	public void atualizar(Movimentacao movimentacao) {
		// TODO implementar
	}

	public Movimentacao buscarMovimentacaoAberta(String vaga) {
		// TODO implementar
		return null;
	}

	/**
	 * Consulta todas as movimentaçoes fechadas pagas e com data de saida preenchida
	 * no mes e anos da data informada
	 * 
	 * @param data Data de Consulta
	 * @return Lista de movimentações do ano e mes informados
	 */
	public List<Movimentacao> consutarMovimentacaoes(LocalDateTime data) {
		// TODO IMPLEMENTAR

		return null;

	}

	public static Connection getConnection() throws SQLException {

		String url = EstacionamentoUtil.get("url");
		String usuario = EstacionamentoUtil.get("usuario");
		String senha = EstacionamentoUtil.get("senha");

		Connection conexao = DriverManager.getConnection(url, usuario, senha);

		return conexao;
	}

	public static void closeConnection(Connection conexao) {
		if (conexao != null) {
			try {
				conexao.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
