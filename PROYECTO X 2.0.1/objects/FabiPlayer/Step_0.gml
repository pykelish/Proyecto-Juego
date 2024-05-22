//Se guarda en la lista de movimientos del usuario (devuelve 0 o 1 dependiendo del estado del jugador)
input.movi = keyboard_check(vk_right) - keyboard_check(vk_left);

//Si está en movimiento, se cambia de posición IMPORTANTE USAR INPUT CON LA PROPIEDAD...
//... DEL MOVIMIENTO
if(input.movi != 0 ) {
	
	x+=sign(input.movi)*3;
	image_xscale= sign(input.movi);
	sprite_index = Pink_Monster_Walk;
	
	
}
else{

	sprite_index = Pink_Monster_Idle;	
	
}

/*
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
}*/









