

/*
 *************************
Lote 01 - Exercício 01 - Coletar o valor do lado de um quadrado, calcular sua área e 
apresentar o resultado.
Programador: Fernanda Pinheiro Reis
Professor: Ricardo Satoshi
 *************************
 */ 
import javax.swing.JOptionPane;

public class LOTE01_EX_01 {
    public static void main (String args[]) 
    {
    int lado, area;
    
    lado = Integer.parseInt(JOptionPane.showInputDialog("Digite o valor de lado do quadrado:"));
    area = lado * lado;
    
    JOptionPane.showMessageDialog(null,"O valor da área é:" +area);
    
    }
}