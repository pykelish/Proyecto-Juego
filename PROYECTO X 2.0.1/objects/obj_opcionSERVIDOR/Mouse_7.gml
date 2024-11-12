//Creación y almacenamiento del servidor >_<
// Variable --- Función de acción --- (Tipo conexión -- Puerto -- Numero de clientes) 
global.SERVER= network_create_server(network_socket_tcp,6510,4);

//Validamos que la conexión es creada, si no, mostramos mnsj.
if(global.SERVER <0){
	
	show_message("Problemas con creación del servidor");
	exit;
	
}

//Damos a esta sesión que es el servidor
global.IS_SERVER=true;
room_goto(Bosque_Room);