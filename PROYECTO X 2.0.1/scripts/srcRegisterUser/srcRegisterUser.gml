//Función que manda nombre de usuario al server p.p, recibe el nombre del usuario
function srcRegisterUser(playerName){

	//Creamos el buffer de memoria necesaria
	var buffer =buffer_create(0, buffer_grow, 1);
	
	//Le decimos que el buffer almacenará String (Ya que solo será el nombre)
	buffer_write(buffer, buffer_string, playerName);
	
	//Enviamos el paquete de info usando el cliente, nuestro buffer y el tamaño del mismo
	network_send_packet(global.CLIENT, buffer, buffer_get_size(buffer));

	//Limpiamos esa memoria dinámica cada que lo hacemos 
	buffer_delete(buffer);

}