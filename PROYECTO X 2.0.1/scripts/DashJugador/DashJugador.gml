// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DashJugador(tipo){
	
	if(tipo == "player"){
		
		if(input.dash){
			estado = "dash";
			alarm[0] = room_speed / 3;
			switch(global.selectedCharacter){
						
						case 1: sprite_index = Pink_Monster_Roll;
						break;
						case 2: sprite_index = Owlet_Monster_Roll;
						break;
						case 3: sprite_index = Dude_Monster_Roll;
						break;
					
			}
		}
		
	}else {
		
			if(input.dash){
			estado = "dash";
			alarm[0] = room_speed / 3;
			switch(characterType){
						
						case 1: sprite_index = Pink_Monster_Roll;
						break;
						case 2: sprite_index = Owlet_Monster_Roll;
						break;
						case 3: sprite_index = Dude_Monster_Roll;
						break;
					
			}
		}
		
	}
	
}