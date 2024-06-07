//Función que actualizará todo el mundo, npcs, jugadores, objetos, colisiones, etc...
function srcBroadcastWorld(){

	var buffer= buffer_create(0, buffer_grow, 1);
	
	buffer_write(buffer, buffer_string, "update_world");
	buffer_write(buffer, buffer_s8, array_length(global.PLAYERS));
	
	for(var i=0; i<array_length(global.PLAYERS); i++){
	
		var player= global.PLAYERS[i];
		var instance= player.instance;
		
		buffer_write(buffer, buffer_s8, player.serverId);
		buffer_write(buffer, buffer_f16, instance.x);
		buffer_write(buffer, buffer_f16, instance.y);
		buffer_write(buffer, buffer_f16, instance.input.movi);
		buffer_write(buffer, buffer_f16, instance.input.correr);
		buffer_write(buffer, buffer_f16, instance.input.salto);
		buffer_write(buffer, buffer_f16, instance.input.dobleSalto);
		buffer_write(buffer, buffer_f16, instance.input.contadorSalto);
		buffer_write(buffer, buffer_f16, instance.input.escaleraArriba);
		buffer_write(buffer, buffer_f16, instance.input.escaleraAbajo);
		buffer_write(buffer, buffer_f16, instance.input.gameOver);
		
	
	}
	var bufferSize = buffer_get_size(buffer);
	for(var i=0; i<array_length(global.PLAYERS); i++){
	
		var player= global.PLAYERS[i];
		var instance= player.instance;
		
		network_send_packet(player.id, buffer, bufferSize);
	}
	
	
	buffer_delete(buffer);

}