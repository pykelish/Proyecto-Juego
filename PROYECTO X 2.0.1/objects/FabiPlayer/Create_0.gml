//Lista que contiene las acciones del jugador
//Puede editarse para añadir salto, disparo, dash etc...
/*self.selectedCharacter = global.selectedCharacter;
characterType = undefined;
input = {
	//Propiedad encargada del movimiento izq-derecha del jugador
	movi:0,
	correr:0,
	salto:0,
	dobleSalto:false,
	contadorSalto:0,
	escaleraArriba:0,
	escaleraAbajo:0,
	gameOver:0,
	dash:0,
	disparo:0,
	recoger:0,
};

//Creamos una variable lasInput identica a input, para saber que inputs están siendo repetidos...
//... si cambió el input (es decir, si hizo otro movimiento o se quedó quieto)...
//... en el ultimo frame lo actualizará, si no, continuará con el mismo input ...
// ... esto para evitar sobrecargas e inputs duplicados

lastInput = {
	movi:0,
	correr:0,
	salto:0,
	dobleSalto:false,
	contadorSalto:0,
	escaleraArriba:0,
	escaleraAbajo:0,
	gameOver:0,
	dash:0,
	disparo:0,
	recoger:0,
};


// En el evento Create del objeto controlador
hp = 3;
saltoDoble = 0;
enEscalera = false;
Punto = 0; 
vy = 0;

carrying = false; // Estado inicial del jugador sin objeto
held_object = noone; // Referencia al objeto que lleva, inicialmente ninguno
recolectables = [obj_Bolsa, obj_Botella, obj_Carton];

estado="idle";
width = 6;
height = 25;
DisparoRatio = 0;
horas = 0;
minutos = 0;
segundos = 0;
alarma_segundo = room_speed;


event_inherited();


state = "vivo";






contador = 0; 
SpriteMuerte = Pink_Monster_Death; 
Esperar = 0;
fall = false;
up = false; 



dashProgress = 0; 
*/
// objPlayer - Create

selectedCharacter = global.selectedCharacter;
 // Define el personaje del jugador local

input = {
	// Propiedades de movimiento
	movi:0, correr:0, salto:0, dobleSalto:false, contadorSalto:0,
	escaleraArriba:0, escaleraAbajo:0, gameOver:0, dash:0, disparo:0, recoger:0,
};

// Duplicado de inputs para detectar cambios
lastInput = {
	movi:0, correr:0, salto:0, dobleSalto:false, contadorSalto:0,
	escaleraArriba:0, escaleraAbajo:0, gameOver:0, dash:0, disparo:0, recoger:0,
};

// Variables adicionales del jugador
hp = 3;
saltoDoble = 0;
enEscalera = false;
Punto = 0; 
vy = 0;

carrying = false; 
held_object = noone;

estado = "idle";
width = 6;
height = 25;
DisparoRatio = 0;
horas = 0;
minutos = 0;
segundos = 0;
alarma_segundo = room_speed;
