//Se guarda en la lista de movimientos del usuario (devuelve 0 o 1 dependiendo del estado del jugador)
input.movi = keyboard_check(vk_right) - keyboard_check(vk_left);
input.correr = keyboard_check(vk_shift);
//Si está en movimiento, se cambia de posición IMPORTANTE USAR INPUT CON LA PROPIEDAD...
//... DEL MOVIMIENTO
if(input.movi != 0) {
	
		if(place_free(x + input.movi * 10, y)) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
			x += input.movi * 3;
			image_xscale= sign(input.movi);
			sprite_index = Pink_Monster_Walk;
		}
	
		if(place_free(x + input.movi * 4, y) && input.correr){
			x += input.movi * 3;
			image_xscale = sign(input.movi);
			sprite_index = Pink_Monster_Run;
		}
	
	
	/*x+=sign(input.movi)*3;

	
	if(input.correr){
		x += sign(input.movi) * 5;
        image_xscale = sign(input.movi);
        
	}*/
	
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









