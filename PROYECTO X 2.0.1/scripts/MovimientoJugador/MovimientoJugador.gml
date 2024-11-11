// Función MovimientoJugador
function MovimientoJugador(tipo, selectedCharacter) {
	
<<<<<<< Updated upstream
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
=======
    if (tipo == "player") {
>>>>>>> Stashed changes
		
        // Movimiento horizontal del jugador (solo si no hay una pared en el camino)
        if (input.movi != 0) {
            if (!place_meeting(x + input.movi * 10, y, Pared) && enEscalera == false) {
                x += input.movi * 3;
                image_xscale = sign(input.movi);  // Cambia la dirección del sprite según el movimiento
            }
        }

        // Lógica para correr o caminar
        if (input.movi != 0) {
            if (input.correr) {
                // Si está corriendo, asignamos el sprite de correr
                asignarSprite("corriendo",selectedCharacter);
            } else {
                // Si está caminando, asignamos el sprite de caminar
                asignarSprite("caminando",selectedCharacter);
            }
        }
        // Si no hay movimiento (jugador está en reposo), asignamos el sprite de inactividad
        else {
            asignarSprite("reposo",selectedCharacter);
        }
    } else if (tipo == "npc") {
        // Movimiento para NPC (Enemigos o personajes no jugadores)
        if (input.movi != 0) {
            if (!place_meeting(x + input.movi * 10, y, Pared) && enEscalera == false) {
                x += input.movi * 3;
                image_xscale = sign(input.movi);  // Cambia la dirección del sprite según el movimiento
            }
        }

        // Lógica para correr o caminar para NPC
        if (input.movi != 0) {
            if (input.correr) {
                // Si el NPC está corriendo, asignamos el sprite de correr
                asignarSprite("corriendo",selectedCharacter);
            } else {
                // Si el NPC está caminando, asignamos el sprite de caminar
                asignarSprite("caminando",selectedCharacter);
            }
        }
        // Si no hay movimiento (NPC está en reposo), asignamos el sprite de inactividad
        else {
            asignarSprite("reposo",selectedCharacter);
        }
    }
}

<<<<<<< Updated upstream
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
=======
>>>>>>> Stashed changes
