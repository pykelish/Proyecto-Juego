
if (keyboard_check_pressed(vk_up) && instance_number(Puntos) <= 0){
	
	FabiPlayer.x = xx;
	FabiPlayer.y = yy;
	room_goto(NextRoom);
	
	
}