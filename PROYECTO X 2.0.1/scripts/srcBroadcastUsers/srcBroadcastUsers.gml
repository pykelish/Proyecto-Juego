// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function srcBroadcastUsers(){

	var buffer = buffer_create(0,buffer_grow,1);
	
	buffer_write(buffer, buffer_string, "update_users");
	buffer_write(buffer, buffer_s8, array_length(global.PLAYERS));
	
	for (var i=0; i<array_length(global.PLAYERS); i++){
		
		var player= global.PLAYERS[i];
		
		buffer_write(buffer, buffer_string, player.name);
		buffer_write(buffer, buffer_s8, player.serverId);
		
	}
	
	var bufferSize = buffer_get_size(buffer);
	
	for (var i=0; i<array_length(global.PLAYERS); i++){
		
		var player= global.PLAYERS[i];
		network_send_packet(player.id,buffer,bufferSize);
		
	}
	
	buffer_delete(buffer);

}