
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package holamundo;

import javax.swing.JOptionPane;

/**
 *
 * @author arturo
 */
public class HolaMundo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       String cadena;
       int entero;
       char letra;
       double decimal;
               cadena = JOptionPane.showInputDialog("digite una cadena");
               entero = Integer.parseInt(JOptionPane.showInputDialog("Digite un entero: "));
               letra = JOptionPane.showInputDialog("Digite un caracter: ").charAt(0);
               decimal = Double.parseDouble(JOptionPane.showInputDialog("Digite un decinal: "));
               
               
    }
    
}
