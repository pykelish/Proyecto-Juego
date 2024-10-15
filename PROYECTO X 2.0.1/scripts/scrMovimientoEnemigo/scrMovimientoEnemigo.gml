function scrMovimientoEnemigo(){
	var x1 = 400;
	var x2 = 830;
	if (image_xscale == 1) {
		x+=2;
		if (x >= x2) {
			image_xscale = -1;
		}
	} 
	if (image_xscale == -1) {
		x -= 2;
		if (x <= x1) {
			image_xscale = 1; 
	
		}
	}
}