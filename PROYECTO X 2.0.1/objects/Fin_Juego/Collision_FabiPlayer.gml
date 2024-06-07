/*if (keyboard_check_pressed(ord("Q"))){
	
	FabiPlayer.x = xx;
	FabiPlayer.y = yy;
	room_goto(NextRoom);
	
	
}*/

if (place_meeting(x, y, FabiPlayer) && !Final) {
    Final = true;
}

if (Final) {
    room_goto(Game_Over);
}