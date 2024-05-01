if (place_meeting(x, y, FabiPlayer) && !Recolectar) {
	FabiPlayer.Punto+= 10;
	image_index = 0; 
	Recolectar = true;		

}


if (Recolectar) {
	if (floor(image_index) >= image_number - 1){
		instance_destroy(); 
	
	}

}

