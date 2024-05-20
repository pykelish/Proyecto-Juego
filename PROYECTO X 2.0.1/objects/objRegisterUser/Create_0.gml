//Preguntaremos si el objeto NO es servidor, necesitamos que sea cliente

if(!global.IS_SERVER){

	//Usamos getString solo para pruebas, lo apto es usar interfaz gráfica
	var playerName = get_string("Ingrese su nombre de usuario", "");
	srcRegisterUser(playerName);
	
}