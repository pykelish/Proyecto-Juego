function scrEnemigoPersigue(){
	var dx = 0;
	if (instance_exists(FabiPlayer)){
		dx = FabiPlayer.x - x;
	} else {
		dx = 0;
	}
	
	if(sign(dx) == image_xscale && abs(dx) <= 110){
		state = "siguiendo";
		
	}
}