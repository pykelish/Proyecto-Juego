function srcSendInput(){

	//Se crea un buffer para poder enviar que tipo de movimiento se está realizando
	var buffer= buffer_create(0,buffer_grow,1);
	
	//Le damos el tipo "client_input"
	buffer_write(buffer, buffer_string,"client_input");
	
	//Y le escribimos el movimiento como tal
	buffer_write(buffer, buffer_f16, input.movi);
	buffer_write(buffer, buffer_f16, input.correr);
	buffer_write(buffer, buffer_f16, input.salto);
	buffer_write(buffer, buffer_f16, input.dobleSalto);
	buffer_write(buffer, buffer_f16, input.contadorSalto);
	buffer_write(buffer, buffer_f16, input.escaleraArriba);
	buffer_write(buffer, buffer_f16, input.escaleraAbajo);
	buffer_write(buffer, buffer_f16, input.gameOver);
	
	
	//Enviamos el buffer al servidor
	network_send_packet(global.CLIENT,buffer,buffer_get_size(buffer));
	
	//Limpiamos el buffer de info
	buffer_delete(buffer);

}