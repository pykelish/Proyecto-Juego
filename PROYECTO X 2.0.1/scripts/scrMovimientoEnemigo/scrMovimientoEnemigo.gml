function scrMovimientoEnemigo(){

	if (image_xscale == -1) {
		x+=2;
		if (x >= x2) {
			image_xscale = 1;
		}
	} 
	if (image_xscale == 1) {
		x -= 2;
		if (x <= x1) {
			image_xscale = -1; 
	
		}
	}
}