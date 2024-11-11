//Preguntaremos si el objeto NO es servidor, necesitamos que sea cliente

if(global.IS_SERVER){

	instance_destroy();
	exit;
	
}

//Usamos getString solo para pruebas, lo apto es usar interfaz gráfica
var playerName = global._name;
srcRegisterUser(playerName);
var instancia = instance_create_layer(95.5,479, "MonedasyObjetos",FabiPlayer);
global.spriteJugador = instancia.sprite_index;