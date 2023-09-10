package impacta.estacionamento.apresentacao;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.ParseException;

import javax.swing.JButton;
import javax.swing.JFormattedTextField;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.text.MaskFormatter;

import impacta.estacionamento.controle.EstacionamentoController;
import impacta.estacionamento.controle.EstacionamentoException;
import impacta.estacionamento.controle.VeiculoException;

public class TelaEntradaVeiculo extends JFrame implements ActionListener{
	
	private JFrame parent;
	private JTextField txtMarca;
	private JTextField txtModelo;
	private JTextField txtCor;
	private JFormattedTextField txfPlaca;
	private JButton btnOk;
	private JButton btnCancel;
	
	//TODO temporario
	
		public static void main (String[] args) {
			TelaEntradaVeiculo tela = new TelaEntradaVeiculo(null);
			tela.setVisible(true);
			
		}

	public TelaEntradaVeiculo(JFrame parent) {
		setResizable(false);
		setSize(400,300);
		
		setTitle("Entrada de Veiculo");
		// TODO Auto-generated constructor stub
		this.parent = parent;
		getContentPane().setLayout(null);
		
		JLabel lblPlaca = new JLabel("Placa:");
		lblPlaca.setBounds(116, 46, 46, 14);
		getContentPane().add(lblPlaca);
		
		JLabel lblMarca = new JLabel("Marca:");
		lblMarca.setBounds(116, 85, 46, 14);
		getContentPane().add(lblMarca);
		
		JLabel lblModelo = new JLabel("Modelo:");
		lblModelo.setBounds(116, 124, 46, 14);
		getContentPane().add(lblModelo);
		
		JLabel lblCor = new JLabel("Cor:");
		lblCor.setBounds(116, 163, 46, 14);
		getContentPane().add(lblCor);
		
		txtMarca = new JTextField();
		txtMarca.setBounds(216, 85, 86, 20);
		getContentPane().add(txtMarca);
		txtMarca.setColumns(20);
		
		txtModelo = new JTextField();
		txtModelo.setBounds(216, 121, 86, 20);
		getContentPane().add(txtModelo);
		txtModelo.setColumns(10);
		
		txtCor = new JTextField();
		txtCor.setBounds(216, 160, 86, 20);
		getContentPane().add(txtCor);
		txtCor.setColumns(10);
		
		btnOk = new JButton("Ok");
		btnOk.addActionListener(this);
		btnOk.setActionCommand("Ok");
		btnOk.setBounds(94, 214, 91, 23);
		getContentPane().add(btnOk);
		
		btnCancel = new JButton("Cancelar");
		btnCancel.setBounds(211, 214, 91, 23);
		btnCancel.addActionListener(this);
		btnCancel.setActionCommand("Cancel");
		getContentPane().add(btnCancel);
		
		try {
			txfPlaca = new JFormattedTextField(new MaskFormatter("UUU-####"));
		} catch (ParseException e1) {
			assert false : "Padrão de Placa errado!"; 
			
		}
		txfPlaca.setColumns(10);
		txfPlaca.setBounds(216, 43, 86, 20);
		getContentPane().add(txfPlaca);
		
		setLocationRelativeTo(null);
	}

	@Override
	public void actionPerformed(ActionEvent evento) {
		if(evento.getActionCommand().equals("Ok")) {
		EstacionamentoController controle = new EstacionamentoController();
		try {
			controle.processarEntrada(txfPlaca.getText(),
										txtMarca.getText(),
										txtModelo.getText(),
										txtCor.getText());
			JOptionPane.showMessageDialog (null,"Veiculo registrado com sucesso",
					"Entrada de Veiculo", JOptionPane.INFORMATION_MESSAGE);
		} catch (EstacionamentoException | VeiculoException e) {
			JOptionPane.showMessageDialog(null,e.getMessage(),
					"Falha na Entrada", JOptionPane.ERROR_MESSAGE);
			
		}
		this.parent.setVisible(true);
		this.dispose();
		} else {
			this.parent.setVisible(true);
			this.dispose();
		}
	}
	}
