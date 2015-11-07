/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package traductor;

import java.util.ArrayList;

/**
 *
 * @author kevem94
 */
public class Oracion {
    private static ArrayList<String> _Palabras = new ArrayList<String>();
    private static String _OracionCompleta = "";
    Oracion(){
    }
    Oracion(String pPalabra){
        _Palabras.add(pPalabra);
    }
    public void agregarPalabras(String pPalabra){
        _Palabras.add(pPalabra);
    }
    
    public String getOracionCompleta(){
        return _OracionCompleta;
    }
    
    public void getPalabras(){
        for(String palabra : _Palabras){
            Palabras palabraBribri = new Palabras();
            String nuevaPalabra = palabraBribri.buscarPalabraBribri(palabra);
            _OracionCompleta += nuevaPalabra + " ";
       
        }
        System.out.println(_OracionCompleta); //Consola
    }
    
}
