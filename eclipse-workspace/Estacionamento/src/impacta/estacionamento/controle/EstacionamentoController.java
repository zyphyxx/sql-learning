package impacta.estacionamento.controle;

import java.time.LocalDateTime;
import java.util.List;

import impacta.estacionamento.negocio.Movimentacao;
import impacta.estacionamento.negocio.Vaga;
import impacta.estacionamento.negocio.Veiculo;
import impacta.estacionamento.persistencia.DAOEstacionamento;
import impacta.estacionamento.utilitario.EstacionamentoUtil;

public class EstacionamentoController {
	
	/**
	 * A partir dos dados do veiculo informados pelo operador realiza
	 * o fluxo de entrada do veiculo no estacionamento registrando
	 * a movimentação gerada.
	 * 
	 * @param placa Placa do veiculo
	 * @param marca Marca do veiculo
	 * @param modelo Modelo do veiculo
	 * @param cor Cor do veiculo
	 * @throws EstacionamentoException Quando o estacionamento estiver lotado.
	 * @throws VeiculoException Quando o padrão da placa for invalido.
	 */
	
	public void processarEntrada(String placa,
			String marca,
			String modelo,
			String cor) 
			throws EstacionamentoException, VeiculoException{
        
		//verificar se o estacionamento está lotado
		
		if(!Vaga.temVagaLivre()) {
			throw new EstacionamentoException("Estacionamento Lotado!");
		}
		//verificar o padrão de string da placa
		
		if(!EstacionamentoUtil.validarPadraoPlaca(placa)) {
			throw new VeiculoException("Placa Informada invalida!");
		}
		//criar uma instacia do veiculo
		Veiculo veiculo = new Veiculo(placa,marca,modelo,cor);
		
		//criar a movimentação vinculando o veiculo e com data de entrada corrente
		Movimentacao movimentacao = new Movimentacao(veiculo,LocalDateTime.now());
		
		//registrar na base de dados a informação
		DAOEstacionamento dao = new DAOEstacionamento();
		dao.criar(movimentacao);
		
		//atualizar o numero de vagas ocupadas
		Vaga.entrou();
		//fim
    }
	
    public Movimentacao processarSaida(String placa){
        return null;
    }

   public List<Movimentacao> emitirRelatorio(LocalDateTime data){
        //TODO implementar
       return null;
   }

}
