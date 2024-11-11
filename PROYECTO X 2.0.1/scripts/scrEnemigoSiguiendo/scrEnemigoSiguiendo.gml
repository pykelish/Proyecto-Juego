function scrEnemigoSiguiendo(){
	var dx = 0;
	if (instance_exists(FabiPlayer)){
		dx = FabiPlayer.x - x;
	} else {
		dx = 0;
	}
	
	if(abs (dx) > 280){
		hor = sign(dx);
		image_xscale = hor * -1;
		scrMovimiento(hor, 2, 8, 8);	
	} else {
		if(object_index == FlorCaminando){
			scrEnemigoAtaque();
		} else if(object_index == obj_Abeja_Enemigo){
			scrEnemigoAtaqueAbeja();
		}
		
		
	}
	
}