/// @description Insert description here
// You can write your code in this editor

if !press exit

if texto == "JUGAR"{
	room_goto(Room1);	
	audio_stop_all();
}

if texto == "AYUDA"{
	room_goto(RoomInstrucciones);	
}

if texto == "ENTENDIDO"{
	room_goto(RoomInstruccionesMap);
}

if texto == "OKEY"{
	
	room_goto(RoomMenu);
	audio_stop_all();
}

if texto == "CONTROLES"{
	room_goto(RoomControls);	
	audio_stop_all();
}

if (texto == "VOLVER"){
	room_goto(RoomMenu);
	
}

if texto == "SIGUIENTE"{
	room_goto(RoomWin2);	
}

if texto == "CONTINUAR"{
	
	room_goto(RoomMenu);	
	audio_stop_all();
}

if texto == "SALIR" {
	game_end();
}
