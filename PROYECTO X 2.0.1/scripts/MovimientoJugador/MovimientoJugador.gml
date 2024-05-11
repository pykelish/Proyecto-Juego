function MovimientoJugador(){
	var Movi = keyboard_check(vk_right) - keyboard_check(vk_left);

	if (Movi != 0){
	
		if(place_free(x + Movi * 10, y)) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
			x += Movi * 3;
		}
	
		if(place_free(x + Movi * 4, y) && keyboard_check(vk_shift)){
			x += Movi * 3;
		}

		image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
		sprite_index = Pink_Monster_Walk;
	
		if(keyboard_check(vk_shift)){
			image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
			sprite_index = Pink_Monster_Run;
		}
	
	
		if (keyboard_check(ord("A"))) {
		sprite_index = Pink_Monster_Throw; 
	
	
		} 
	
	} else {
		sprite_index = Pink_Monster_Idle; 
	
	}
}