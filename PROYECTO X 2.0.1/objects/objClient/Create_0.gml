//Preguntaremos si el objeto NO es servidor, necesitamos que sea cliente

if(global.IS_SERVER){

	instance_destroy();
	exit;
	
}

//Usamos getString solo para pruebas, lo apto es usar interfaz gráfica
var playerName = global._name;
srcRegisterUser(playerName);

instance_create_layer(128,384, "Instances_1",FabiPlayer);