   
/* --------------------------Usercode Section------------------------ */

package traductor;
 
import java_cup.runtime.*;
import java_cup.runtime.Symbol;
import traductor.Token;
      
%%
   
/* -----------------Options and Declarations Section----------------- */
   
/* 
   The name of the class JFlex will create will be Lexer.
   Will write the code to the file Lexer.java. 
*/
%class Lexer

/*
  The current line number can be accessed with the variable yyline
  and the current column number with the variable yycolumn.
*/
%line
%column
%caseless
    
/* 
   Will switch to a CUP compatibility mode to interface with a CUP
   generated parser.
*/
%cup
   
/*
  Declarations
   
  Code between %{ and %}, both of which must be at the beginning of a
  line, will be copied letter to letter into the lexer class source.
  Here you declare member variables and functions that are used inside
  scanner actions.  
*/
%{   
    /* To create a new java_cup.runtime.Symbol with information about
       the current token, the token will have no value in this
       case. */
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    /* Also creates a new java_cup.runtime.Symbol with information
       about the current token, but this object has a value. */
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
   

/* Definiciones de los caracteres */

caracteres = [^\r\n]*
finLinea = \n| \r | \r\n
espacios = [\s\t\f]
espacioBlanco = {finLinea} | {espacios} | " "


/* Definicion de Diccionario */
redonda = "êk" | "bök" | "mañak" | "tkék" | "skék" | "tèröl" | "kúl" | "pàköl" | "sulitöm" | "dabom"

alargada =  "êtöm" | "bötöm" | "mañatöm" | "tkëtöm" | "skétöm" | "tèrktöm" | "kúktöm" | "pàktöm" | "sulitöm" | "daboptöm"
plana = "êt" | "böt" | "mañat" | "tkël" | "skél" | "tèröl" | "kúl" | "pàköl" | "sulitöm" | "dabom"
humana = "êköl" | "êköl" | "mañal" | "tkël" | "skél" | "tèröl" | "kúl" | "pàköl" | "sulitöm" | "dabom"
edificacion = "êtkwe" | "bötkwe" | "mañatkwe" | "tkélkwe" | "skélkwe" | "tèrölkwe" | "kúlkwe" | "pàkölkwe" | "sulitkwe" | "dabopkwe"
especie = "éltë" | "böltë" | "mañaltë" | "tkëltë" | "skéltë" | "tèróltë" | "kúltë" | "páköltë" | "sulitultë" | "dabóptë"
conjunto = "éyök" | "bӧyök" | "mañáyök" | "Tkëyök" | "skéyök" | "tèryök" | "kùlyök" | "pàryök" | "sulìtúyök" | "dabòbyö"

diccionario = {redonda} | {alargada} | {plana} | {humana} | {edificacion} | {especie} | {conjunto}

/* Definicion de Pronombres */
/* yo |  tu, usted, vos |  el, ella ello |  nosotros | ustedes, ellos, ellas */
pronombre = "ye'" | "be'" | "ie'" | "sa''" | "a'" | "ie'pa"

/* Definicion de Adverbios */
/* | como | muy | bien | qué | dónde | mal | luego | hasta | cuánto, cuántos   */
adverbio = "ìs" | "ë" | "bua'" | "ì" | "wé" | "sulù" | "ska" | "dö`ka" | "kòs"

/* Definicion de Verbos */
/* ser | llamar | vivir | ayudar | hacer | estar, tener | estudiar  | tomar | ir | ir a | trabajar | leer | correr | descansar | bailar | comer | querer  */
verbo = "dör" | "kiö`k" | "senuk" | "kímuk" | "ùk" | "tso'" | "yawök" | "yök" | "mìk" | "shkö`k" | "kanebalök" | "òrtsök" | "túnuk" | "énuk" | "kalö`tök" | "chkö`k" | "kiànuk"

/* Definicion de Sustantivos */
/* casa | papá, padre |  mamá, madre | lugar | pariente | médico | danta | familia | río | limón | rama | árbol | banano | bolsito | piedra | nube | planta | diente | carne | pie | piel | esposa | anciana | gallina | pájaro | tigre | cazador | libro | café | cacao, chocolate | abuelo | tío | hermano,hermana, primo, prima | años */
sustantivo = "ù'pa" | "yë´'pa" | "mì'pa" | "kó'pa" | "yàmi'pa" | "awá'pa" | "nai'pa'" | "yàmipa'pa" | "di'pa'" | "àsh'pa" | "kàlula'pa" | "kàl'pa" | "chamù'pa" | "sku'pa" | "ák'pa" | "mò'pa" | "kuá'pa" | "kà'pa" | "chakà'pa" | "kalö`'pa" | " jkuö`'pa" | "alaköl'pa" | "wìke'pa" | "krò'pa" | "dù'pa" | "namù'pa"  | "yë´ria'pa" | "yë´jkuö'pa" | "kàpi'pa" | "tsuru'pa" | "talà'pa" | "dawo'chke'pa" | "yë´la'pa" | "náu'pa" | 
"ë´l'pa" | "kutà'pa" | "akë`'pa" | "dawö'pa" | "dawás" 

/* Definicion de Adjetivos */
/* mi | mis | tu | tus | su | sus | nuestro | nuestros | nuestra | nuestras | mío, mía, tuya, tuyo, míos, mías, tuyos, tuyas, suyo, suyos, suyo, suyas | aquel | aquella | aquellos | aquellas | esto, esta, estos, estas | bueno | malo */
adjetivo = "ye'" | "be'" | "s" |  "sa'" | "icha" | "diö´" | "ñe'" | "e'" | "aí" | "aì" | "wí" | "wì" | "diö´" | "dià" | "e" | "i'" | "bua'" | "sulù"


/* Definicion de Preposiciones */
/* en, para, dentro | sobre | desde | hacia | con | contra  */
preposicion = "a" | "ki" | "tsóka" | "ta" | "wa"  

/* Definicion de Articulos DUDA*/
/* un, una, unos, unas, el, la, los, las  */


/* Definicion de Literales */
numEnteros = [0-9][0-9*]
numFlotantes = [-+]?[0-9]*\.?[0-9]+
literal = {numEnteros} | {numFlotantes}

/* Definicion de Nombres Propios */
/* los    nombres    propios    son    sustantivos    que    Empiezan    con    una    letra    en    mayúscula en    cualquier    parte    de    la    oración.    Ej:    Eduardo,    Talamanca,    Juliana.*/
nombrePropio = "Talamanca" | "Eduardo" | "Juliana" | "Roxana" | "Kevin" | "Esteban" | "Cartago" | "Turrialba" | "Liberia"

/* Definicion de Signos de puntuacion */
puntuacion = "." | "," | ";" | "¡" | "!" | "?" | "¿"

/* Definicion de errores MEJORAR*/
errorSimbolosExtranos = [$#@&\?!¿0-9a-zA-Z][$#@&\?!¿0-9a-zA-Z]*
errorComillas = ["]["]*
error = {errorSimbolosExtranos} | {errorComillas}

/* Definicion de otras palabras necesarias */
otros = "Bíl" | "tso'" | "taî" | "éyök" | "kí" | "Tö" 





%%
/* ------------------------Lexical Rules Section---------------------- */
 
/* Reglas para los espacios en Blanco */
{espacioBlanco} {}



/* Reglas de Diccionario */
{diccionario} {return new Symbol(sym.PALABRA_RESERVADA, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Pronombres */
{pronombre} {return new Symbol(sym.PRONOMBRE, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Adverbios */
{adverbio} {return new Symbol(sym.ADVERBIO, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Verbos */
{verbo} {return new Symbol(sym.VERBO, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Sustantivos */
{sustantivo} {return new Symbol(sym.SUSTANTIVO, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Adjetivos */
{adjetivo} {return new Symbol(sym.ADJETIVO, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Preposicion*/
{preposicion} {return new Symbol(sym.PREPOSICION, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Articulos */

/* Reglas de Literales */
{literal} {return new Symbol(sym.LITERAL, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Nombres Propios */
{nombrePropio} {return new Symbol(sym.NOMBRE_PROPIO, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de Signos de puntuacion */
{puntuacion} {return new Symbol(sym.SIGNO_PUNTUACION, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de otras palabras */
{otros} {return new Symbol(sym.OTRO, new Token(yychar,yyline,new String(yytext())));}

/* Reglas de errores */
{error} {return new Symbol(sym.ERROR_LEXICO, new Token(yychar,yyline,new String(yytext())));}

/* oracionNormal = NombrePropio Verbo Diccionario Sustantivo */
