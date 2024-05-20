// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function srcAcceptUser(playerSocket, serverId){

	var buffer = buffer_create(0, buffer_grow,1);
	 
	 buffer_write(buffer, buffer_string, "accept_user");
	 buffer_write(buffer, buffer_s8, serverId);
	 
	 network_send_packet(playerSocket, buffer, buffer_get_size(buffer));
	 buffer_delete(buffer);
	
}