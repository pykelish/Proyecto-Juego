// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SaltoJugador(tipo){
	
	if(tipo == "player"){
		
		if (input.salto && saltoDoble != 1){
			saltoDoble += 1;
			vspeed -= 7;	
			switch(global.selectedCharacter){
						
					case 1: sprite_index = Pink_Monster_JumpUp;
					break;
					case 2: sprite_index = Owlet_Monster_JumpUp;
					break;
					case 3: sprite_index = Dude_Monster_JumpUp;
					break;
					
			}
		}
	
		if(collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false) && saltoDoble > 0){
			saltoDoble = 0;

		}
	}else {
			if (input.salto && saltoDoble != 1){
			saltoDoble += 1;
			vspeed -= 7;	
			switch(global.npcCharacter){
						
					case 1: sprite_index = Pink_Monster_JumpUp;
					break;
					case 2: sprite_index = Owlet_Monster_JumpUp;
					break;
					case 3: sprite_index = Dude_Monster_JumpUp;
					break;
					
			}
		}
	
		if(collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false) && saltoDoble > 0){
			saltoDoble = 0;

		}
		
	
	}

}