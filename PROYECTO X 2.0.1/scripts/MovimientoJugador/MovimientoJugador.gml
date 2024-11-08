function MovimientoJugador(){
	
	if(input.movi != 0) {

		if(!place_meeting(x + input.movi * 10, y, Pared) && enEscalera = false) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
			x += input.movi * 3;
			image_xscale= sign(input.movi);
			
			if(estado = "cargando"){
				sprite_index = Pink_Monster_WalkwItem;
			} else {
				sprite_index = Pink_Monster_Walk;
			}
		}
	
		if(!place_meeting(x + input.movi * 4, y, Pared) && input.correr && enEscalera = false){
			x += input.movi * 3;
			image_xscale = sign(input.movi);
			if(estado = "cargando"){
				sprite_index = Pink_Monster_RunwItem;
			} else {
				sprite_index = Pink_Monster_Run;
			}
		}
		

	
	} else{

		if(estado = "cargando"){
				sprite_index = Pink_Monster_IdlewObject;
			} else {
				sprite_index = Pink_Monster_Idle;
			}
	
	}
}