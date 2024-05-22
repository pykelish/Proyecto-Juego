// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DashJugador(){
	
	input.dash=keyboard_check_pressed(vk_space);
	if(input.dash){
		estado = "dash";
		alarm[0] = room_speed / 3;
		sprite_index = Pink_Monster_Roll;
	}
	
}