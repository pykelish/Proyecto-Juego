//Le damos al npc del servidor o del cliente ajeno al propio la opción de moverse...
//... usando claro la lista input, para que sea el movimiento enviado por el cliente
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
		break;
		
	case "dash":
		scrMovimiento(sign(image_xscale), 6, width,height);
		if(keyboard_check_pressed(vk_shift)){
			scrMovimiento(sign(image_xscale), 24, width,height);
		}
		
	break;
}
*/