function scrMovimientoEnemigo(){
	var x1 = 266;
	var x2 = 720;
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