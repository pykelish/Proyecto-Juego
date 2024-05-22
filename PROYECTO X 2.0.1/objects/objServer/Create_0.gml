//Confirmamos que el inicio de sesión NO fue servidor, si es asi eliminamos la instancia
if(!global.IS_SERVER){
	
	instance_destroy();
	exit;
	
}
//Si es un cliente, se crea la lista de jugadores ;)
global.PLAYERS = [];
global.PLAYER_SERVER_ID =0;

global.UPDATE_WORLD_FREQUENCY = floor(game_get_speed(gamespeed_fps) / 30);
alarm[0] = global.UPDATE_WORLD_FREQUENCY;
