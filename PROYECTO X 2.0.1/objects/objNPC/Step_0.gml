if(state = "muerto"){
	exit;
}

switch (estado){
	case "idle":
		MovimientoJugador();
		SaltoJugador();
		DisparoJugador();
		DashJugador();
		break;
		
	case "dash":
		scrMovimiento(sign(image_xscale), 6, width,height);
		if(keyboard_check_pressed(vk_shift)){
			scrMovimiento(sign(image_xscale), 24, width,height);
		}
		
	break;
}