/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools , Templates
 * and open the template in the editor.
 */

package traductor;

import java.util.List;

/**
 *
 * @author kevem94
 */
public class Palabras {
    
    
    public String[] _Bribri = {"êk","bök","mañak","tkék","skék","tèröl","kúl","pàköl","sulitöm","dabom",
                               "êtöm","bötöm","mañatöm","tkëtöm","skétöm","tèrktöm","kúktöm","pàktöm","sulitöm","daboptöm",
                               "êt","böt","mañat","tkël","skél","tèröl","kúl","pàköl","sulitöm","dabom",
                               "êköl","êköl","mañal","tkël","skél","tèröl","kúl","pàköl","sulitöm","dabom",
                               "êtkwe","bötkwe","mañatkwe","tkélkwe","skélkwe","tèrölkwe","kúlkwe","pàkölkwe","sulitkwe","dabopkwe",
                               "éltë","böltë","mañaltë","tkëltë","skéltë","tèróltë","kúltë","páköltë","sulitultë","dabóptë",
                               "éyök","bӧyök","mañáyök","Tkëyök","skéyök","tèryök","kùlyök","pàryök","sulìtúyök","dabòbyö",
                               "ye'","be'","be'","be'","ie'","ie'","ie'","sa''","a'","ie'pa","ie'pa","ie'pa",
                               "ìs", "ë", "bua'", "ì", "wé", "sulù", "ska", "dö`ka", "kòs", "kòs",
                               "dör" , "kiö`k" , "senuk" , "kímuk" , "ùk" , "tso'" , "tso'" , "yawök" , "yök" , "mìk" , "shkö`k" ,
                               "kanebalök" ,"òrtsök" , "túnuk" , "énuk" , "kalö`tök" , "chkö`k" , "kiànuk",
			       "ù'pa", "yë´'pa", "yë´'pa", "mì'pa","mì'pa","kó'pa", "yàmi'pa", "awá'pa", "nai'pa", "yàmipa'pa", "di'pa'", 				       "àsh'pa", "kàlula'pa", "kàl'pa", "chamù'pa", "sku'pa", "ák'pa","mò'pa", "kuá'pa", "kà'pa","chakà'pa", 				       "kalö`'pa"," jkuö`'pa", "alaköl'pa", "wìke'pa", "krò'pa", "dù'pa" , "namù'pa", "yë´ria'pa", "yë´jkuö'pa", 				       "kàpi'pa", "tsuru'pa", "tsuru'pa", "talà'pa","dawo'chke'pa", "yë´la'pa", "náu'pa", "ë´l'pa", "kutà'pa", 				       "akë`'pa", "dawö'pa", "dawö'pa", "dawö'pa", "dawö'pa", "dawás",
                               "ye'" , "be'" , "s" ,  "sa’" , "icha" , "diö´" , "ñe'" , "e'" , "aí" , "aì" ,"aì" ,"aì" ,"aì" ,
                               "aì" ,"aì" ,"aì" ,"aì" ,"aì" ,"aì" ,"wí" , "wì" , "diö´" , "dià" ,
                               "e'" ,"e'" ,"e'" ,"e'" , "i’" , "bua'" , "sulù",
                               "a" ,"a" ,"a" , "ki" , "tsóka" , "ta" , "wa",
                               "Bíl", "tso'", "taî", "éyök", "kí", "Tö"                           
    
    };
        
    
    public String[] _Espanol = {"uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "uno","dos","tres","cuatro","cinco","seis","siete","ocho","nueve","diez",
                                "yo","usted","tu","vos","el","ella","ello","nosotros","nosotros","ustedes","ellos","ellas",
                                "como","muy", "bien", "qué", "dónde", "mal","luego", "hasta", "cuánto","cuántos",
                                "ser" , "llamar" , "vivir" , "ayudar" , "hacer" , "tener" , "estar", "estudiar" , "tomar" , "ir" ,
                                "ir a" , "rabajar" , "leer" , "correr" , "descansar" , "bailar" , "comer" , "querer",   
                                "casas" , "papás", "padres" ,"mamás", "madres" , "lugares" , "parientes" , "médicos" , "dantas" , "familias" ,
                                "ríos" ,"limónes" ,"ramas" , "árboles", "bananos", "bolsitos" ,"piedras", "nubes", "plantas", "dientes",
				"carnes", "pies" ,"pieles" , "esposas",  					"ancianas" ,"gallinas" ,"pájaros" ,"tigres" ,"cazadores","cazadores" ,"libros" , "cafés", 
                                "cacaos", "chocolates","abuelos" ,"abuelos" ,"abuelos" ,"abuelos" , "tíos" ,"tíos" , "hermanos","hermanas", 					"primos", "primas" , "años", 
                                "mi" , "mis" , "tu" , "tus" , "su" , "sus" , "nuestro" , "nuestros" , "nuestra" , "nuestras" , 
                                "mío", "mía", "tuya", "tuyo", "mías", "tuyos", "tuyas", "suyo", "suyos", "suyo", "suyas" , 
                                "aquel" , "aquella" , "aquellos" , "aquellas" , "esto", "esta", "estos", "estas" , "bueno" , "malo",
                                "en", "para", "dentro" , "sobre" , "desde" , "hacia" , "con" , "contra",
                                "Cuantos", "tiene","conjuntos", "de", "si"
                                
    };
    
    public String buscarPalabraBribri(String pPalabra){
        for(int i = 0; i< _Bribri.length; i++){
            if(isNumeric(pPalabra)){
                return pPalabra;
               } 
            if(_Bribri[i].contentEquals(pPalabra)){
                return _Espanol[i];
               }
            
        }
        return pPalabra;
    }
    
    private boolean isNumeric(String cadena){
        try {
            Integer.parseInt(cadena);
            return true;
        } catch (NumberFormatException nfe){
            return false;
        }
    }
}
