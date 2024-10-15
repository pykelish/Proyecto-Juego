function scrEnemigoSiguiendo(){
	var dx = 0;
	if (instance_exists(FabiPlayer)){
		dx = FabiPlayer.x - x;
	} else {
		dx = 0;
	}
	
	if(abs (dx) > 10){
		hor = sign(dx);
		image_xscale = hor;
		scrMovimiento(hor, 2, 8, 8);	
	}
	
}