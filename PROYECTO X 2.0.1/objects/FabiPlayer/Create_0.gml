//Lista que contiene las acciones del jugador
//Puede editarse para añadir salto, disparo, dash etc...
input = {
	//Propiedad encargada del movimiento izq-derecha del jugador
	movi:0,
	correr:0
	
};

//Creamos una variable lasInput identica a input, para saber que inputs están siendo repetidos...
//... si cambió el input (es decir, si hizo otro movimiento o se quedó quieto)...
//... en el ultimo frame lo actualizará, si no, continuará con el mismo input ...
// ... esto para evitar sobrecargas e inputs duplicados

lastInput = {
	movi:0,
	correr:0
	
};





/*event_inherited();

DisparoRatio = 0; 
Punto = 0; 
state = "vivo";

width = 6;
height = 25;


estado="idle";
hp = 2;
contador = 0; 
SpriteMuerte = Pink_Monster_Death; 
Esperar = 0;
fall = false;
up = false; 

dobleSalto = false;
contadorSaltos = 0;

dashProgress = 0; 
*/
