package impacta.estacionamento.utilitario;

import impacta.estacionamento.negocio.Movimentacao;

/**
 * Representa uam classe de apoio as demais do sistema.
 */

public class EstacionamentoUtil {
	
	 /**
     * Valida a placa com o padrão LLL-NNNN
     * L = Letra
     * N = Numero
     * @param placa placa do veiculo
     * @return true se atender o padrão e false senão.
     */
	
    public boolean validarPadraoPlaca(String placa){
        //TODO Implementar
        return false;
    }

   
    /**
     * O calculo do valor da estada do veiculo baseado no tarifario
     * e na hora de entrada e saida do veiculo
     *
     * Altera a propria instacia do paramentro
     *
     * @param movimentacao Instacia da movimentação
     */
    
    public void calcularPagamento(Movimentacao movimentacao){
        //TODO implementar

    }

}
