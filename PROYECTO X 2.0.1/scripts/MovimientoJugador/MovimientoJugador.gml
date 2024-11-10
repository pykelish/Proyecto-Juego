function MovimientoJugador(tipo){
	
	if(tipo == "player"){
		if(input.movi != 0) {

			if(!place_meeting(x + input.movi * 10, y, Pared)) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
				x += input.movi * 3;
				image_xscale= sign(input.movi);
			
				if(estado = "cargando"){
				
					switch(self.selectedCharacter){
						
						case 1: sprite_index = Pink_Monster_WalkwItem;
						break;
						case 2: sprite_index = Owlet_Monster_WalkwItem;
						break;
						case 3: sprite_index = Dude_Monster_WalkwItem;
						break;
					
					}
				
				} else {
				
					switch(self.selectedCharacter){
						
						case 1: sprite_index = Pink_Monster_Walk;
						break;
						case 2: sprite_index = Owlet_Monster_Walk;
						break;
						case 3: sprite_index = Dude_Monster_Walk;		
						break;
					}
				}
			}
	
			if(!place_meeting(x + input.movi * 4, y, Pared) && input.correr){
				x += input.movi * 3;
				image_xscale = sign(input.movi);
				if(estado = "cargando"){				
					switch(self.selectedCharacter){
						
						case 1: sprite_index = Pink_Monster_RunwItem;
						break;
						case 2: sprite_index = Owlet_Monster_RunwItem;
						break;
						case 3: sprite_index = Dude_Monster_RunwItem;
						break;
					};
				} else {				
					switch(self.selectedCharacter){
						
						case 1: sprite_index = Pink_Monster_Run;
						break;
						case 2: sprite_index = Owlet_Monster_Run;
						break;
						case 3: sprite_index = Dude_Monster_Run;
						break;
					
					}
				}
			}
		

	
		} else{

			if(estado = "cargando"){			
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_IdlewObject;
						break;
						case 2: sprite_index = Owlet_Monster_IdlewObject;
						break;
						case 3: sprite_index = Dude_Monster_IdlewObject;
						break;
					
					}
				} else {			
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_Idle;
						break;
						case 2: sprite_index = Owlet_Monster_Idle;
						break;
						case 3: sprite_index = Dude_Monster_Idle;
						break;
					
					}
				}
	
		}
		
	}else{
		if(input.movi != 0) {

			if(!place_meeting(x + input.movi * 10, y, Pared)) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
				x += input.movi * 3;
				image_xscale= sign(input.movi);
			
				if(estado = "cargando"){
				
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_WalkwItem;
						break;
						case 2: sprite_index = Owlet_Monster_WalkwItem;
						break;
						case 3: sprite_index = Dude_Monster_WalkwItem;
						break;
					
					}
				
				} else {
				
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_Walk;
						break;
						case 2: sprite_index = Owlet_Monster_Walk;
						break;
						case 3: sprite_index = Dude_Monster_Walk;		
						break;
					}
				}
			}
	
			if(!place_meeting(x + input.movi * 4, y, Pared) && input.correr){
				x += input.movi * 3;
				image_xscale = sign(input.movi);
				if(estado = "cargando"){				
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_RunwItem;
						break;
						case 2: sprite_index = Owlet_Monster_RunwItem;
						break;
						case 3: sprite_index = Dude_Monster_RunwItem;
						break;
					};
				} else {				
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_Run;
						break;
						case 2: sprite_index = Owlet_Monster_Run;
						break;
						case 3: sprite_index = Dude_Monster_Run;
						break;
					
					}
				}
			}
		

	
		} else{

			if(estado = "cargando"){			
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_IdlewObject;
						break;
						case 2: sprite_index = Owlet_Monster_IdlewObject;
						break;
						case 3: sprite_index = Dude_Monster_IdlewObject;
						break;
					
					}
				} else {			
					switch(characterType){
						
						case 1: sprite_index = Pink_Monster_Idle;
						break;
						case 2: sprite_index = Owlet_Monster_Idle;
						break;
						case 3: sprite_index = Dude_Monster_Idle;
						break;
					
					}
				}
	
		}
		
		
		
	}
	
}