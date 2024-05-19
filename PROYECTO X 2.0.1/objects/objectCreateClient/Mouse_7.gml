//Creación del cliente
//Variable ---- Función de creación -(Tipo de conexión)
global.CLIENT = network_create_socket(network_socket_tcp);

//Guardamos conexión en variable
//Variable ---- Función de creación(NombreCliente, direcciónIP del cliente, puerto de conexión)
var connection = network_connect(global.CLIENT, "192.168.1.170" , 6510);

//Validamos que la conexión fue creada
if(connection <0){
	
	show_message("No se concretó la conexión");
	exit;
}
room_goto(Room_Test_EMA);