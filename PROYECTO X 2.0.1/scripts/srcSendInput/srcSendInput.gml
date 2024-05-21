// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function srcSendInput(){

	var buffer= buffer_create(0,buffer_grow,1);
	
	buffer_write(buffer, buffer_string,"client_input");
	
	buffer_write(buffer, buffer_f16, input.movi);
	buffer_write(buffer, buffer_f16, input.salto);
	buffer_write(buffer, buffer_f16, input.dash);
	buffer_write(buffer, buffer_f16, input.disparo);
	
	network_send_packet(global.CLIENT,buffer,buffer_get_size(buffer));
	buffer_delete(buffer);

}