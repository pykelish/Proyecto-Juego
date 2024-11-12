function DisparoJugador(tipo){
	
	DisparoRatio -=1; 
	
	if(tipo == "npc"){
		
		if (input.disparo && DisparoRatio <= 0) {
			sprite_index = Pink_Monster_Throw;
			switch(global.selectedCharacter){
						
				case 1: var Buum = instance_create_layer(x + 47 * image_xscale, y - 30, "MonedasyObjetos", disparo_Pink);
				break;
				case 2: var Buum = instance_create_layer(x + 47 * image_xscale, y - 30, "MonedasyObjetos", disparo_Owl); 
				break;
				case 3: var Buum = instance_create_layer(x + 47 * image_xscale, y - 30, "MonedasyObjetos", disparo_Dude); 
				break;	
			}
			
			//audio_play_sound(SonBumerang, 1, false);
			Buum.image_xscale = image_xscale; 
			Buum.hspeed *= image_xscale; 
		
			DisparoRatio = 20;
		

		}
		
	}else if (tipo == "player"){
		
			if (input.disparo && DisparoRatio <= 0) {
			sprite_index = Pink_Monster_Throw;
			switch(global.selectedCharacter){	
				case 1: var Buum = instance_create_layer(x + 47 * image_xscale, y - 29, "MonedasyObjetos", disparo_Pink); 
				break;
				case 2: var Buum = instance_create_layer(x + 47 * image_xscale, y - 29, "MonedasyObjetos", disparo_Owl); 
				break;
				case 3: var Buum = instance_create_layer(x + 47 * image_xscale, y - 29, "MonedasyObjetos", disparo_Dude); 
				break;	
			}
			//audio_play_sound(SonBumerang, 1, false);
			Buum.image_xscale = image_xscale; 
			Buum.hspeed *= image_xscale; 
		
			DisparoRatio = 20;
		

		}
		
	}
	
}