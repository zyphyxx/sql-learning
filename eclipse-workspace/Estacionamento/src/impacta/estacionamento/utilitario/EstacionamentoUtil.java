package impacta.estacionamento.utilitario;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import impacta.estacionamento.negocio.Movimentacao;

/**
 * Representa uam classe de apoio as demais do sistema.
 */

public class EstacionamentoUtil {

	/**
	 * Valida a placa com o padrão LLL-NNNN L = Letra N = Numero
	 * 
	 * @param placa placa do veiculo
	 * @return true se atender o padrão e false senão.
	 */

	public static boolean validarPadraoPlaca(String placa) {
		String padrao = "[A_Z][A-Z][A-Z]-\\d\\d\\d\\d";
		Pattern p = Pattern.compile(padrao);
		Matcher m = p.matcher(placa);

		return m.matches();
	}

	/**
	 * O calculo do valor da estada do veiculo baseado no tarifario e na hora de
	 * entrada e saida do veiculo
	 *
	 * Altera a propria instacia do paramentro
	 *
	 * @param movimentacao Instacia da movimentação
	 */

	public void calcularPagamento(Movimentacao movimentacao) {

		// TODO implementar
	}

	/**
	 * Recupera uma propriedade do arquivo de configuração da aplicação
	 * configuration.txt
	 * 
	 * 
	 */
	public static String get(String propriedade) {
		Properties prop = new Properties();
		String valor = null;
		try {
			prop.load(new FileInputStream("/recursos/configuration.txt"));
			valor = prop.getProperty(propriedade);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			assert false : "Configuração não Carregada";
		}

		return valor;
	}

	public static String getDataAsString(LocalDateTime dataHoraEntrada) {
		// TODO Auto-generated method stub
		return null;
	}

}
