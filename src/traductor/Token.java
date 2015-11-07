/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package traductor;


/**
 *
 * @author kevem94
 */
public class Token {
    private String _Nombre;
    private int _Linea;
    private int _Columna;

    Token(){
    }
    Token(int pLinea, int pColumna, String pNombre){
        _Nombre = pNombre;
        _Linea = pLinea;
        _Columna = pColumna;
    }
    
    public String getNombre() {
        return _Nombre;
    }
    
    public int getLinea() {
        return _Linea;
    }
    
    public int getColunma() {
        return _Columna;
    }
    
    
    
}
