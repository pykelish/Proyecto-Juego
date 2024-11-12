//Función que manda nombre de usuario al server p.p, recibe el nombre del usuario
function srcRegisterUser(playerName){

	//Creamos el buffer de memoria necesaria
	var buffer =buffer_create(0, buffer_grow, 1);
	
	//Mandamos el buffer de tipo "register_user" en caso de que el usuario sea nuevo y pueda añadirlo...
	//... al arrego de clientes
	buffer_write(buffer,buffer_string,"register_user");
	
	//Le decimos que el buffer almacenará String (Ya que solo será el nombre)
	buffer_write(buffer, buffer_string, playerName); 
	
	//Enviamos el paquete de info usando el cliente, nuestro buffer y el tamaño del mismo
	network_send_packet(global.CLIENT, buffer, buffer_get_size(buffer));

	//Limpiamos esa memoria dinámica cada que lo hacemos 
	buffer_delete(buffer);

}