//Le damos al npc del servidor o del cliente ajeno al propio la opción de moverse...
//... usando claro la lista input, para que sea el movimiento enviado por el cliente
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
		
		
	
}
else{

	sprite_index = Pink_Monster_Idle;	
	
}
if ( input.salto && !input.dobleSalto){
	input.contadorSalto += 1;
	vspeed = -5;
	sprite_index = Pink_Monster_JumpUp;
	audio_play_sound(SonidoSalto, 1, false);
        
	if (input.contadorSalto > 0){
	    input.dobleSalto = true;
		sprite_index = Pink_Double_Jump;
	}
        
}
	
if (collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false)){
	input.dobleSalto = false;
	input.contadorSalto = 0;
}

/*
if(state = "muerto"){
	exit;
}

switch (estado){
	case "idle":
		MovimientoJugador();
		break;
		
	case "dash":
		scrMovimiento(sign(image_xscale), 6, width,height);
		if(keyboard_check_pressed(vk_shift)){
			scrMovimiento(sign(image_xscale), 24, width,height);
		}
		
	break;
}
*/