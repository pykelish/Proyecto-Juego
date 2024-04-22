/// @description Insert description here
// You can write your code in this editor

if !press exit

if texto == "JUGAR"{
	room_goto(Room1);
	
}

if texto == "CONTROLES"{
	room_goto(RoomControls);
	
}

if texto == "VOLVER"{
	room_goto(RoomMenu);
	
}

if texto == "SIGUIENTE"{
	room_goto(RoomWin2);
	
}

if texto == "CONTINUAR"{
	room_goto(RoomMenu);
	
}

if texto == "SALIR" {
	game_end();
}
