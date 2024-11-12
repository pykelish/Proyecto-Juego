switch (state) {
	case "idle":
		scrMovimientoEnemigo();
		scrEnemigoPersigue();
		break;
		
	case "siguiendo":
		scrEnemigoSiguiendo();
		break;
		
	case "muerto":
		exit; 
	break;
}


/*if(image_xscale == 1 && x >= x2){
	image_xscale = -1
	x+=3;
} else if (image_xscale == -1 && x <= x1){
	image_xscale = -1
	x-=3;
}*/

















