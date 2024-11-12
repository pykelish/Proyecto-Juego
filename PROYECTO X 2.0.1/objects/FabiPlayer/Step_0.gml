//Se guarda en la lista de movimientos del usuario (devuelve 0 o 1 dependiendo del estado del jugador)
input.movi = keyboard_check(ord("D")) - keyboard_check(ord("A"));
input.correr = keyboard_check(vk_shift);
input.salto = keyboard_check_pressed(vk_space);
input.escaleraArriba = keyboard_check(ord("W"));
input.escaleraAbajo = keyboard_check(ord("S"));
input.dash =  keyboard_check_pressed(ord("E"));
input.gameOver = keyboard_check_pressed(ord("Q"));
input.disparo = keyboard_check_pressed(ord("J"));
input.recoger = keyboard_check_pressed(ord("K"));
//Si está en movimiento, se cambia de posición IMPORTANTE USAR INPUT CON LA PROPIEDAD...
//... DEL MOVIMIENTOs
scrReloj();

if(estado == "muerto"){
	exit;
}

switch (estado){
	case "idle":
		scrEscalerasMovi();
		//show_message(selectedCharacter);
		MovimientoJugador("player",self.selectedCharacter);
		SaltoJugador("player");
		DisparoJugador("player");
		DashJugador("player");
		scrRecogerObj();
		break;
		
	case "dash":
		scrMovimiento(sign(image_xscale), 6, width,height);
		if(input.dash){
			scrMovimiento(sign(image_xscale), 24, width,height);
		}
		
	break;
	
	case "cargando":
		MovimientoJugador("player",self.selectedCharacter);
		scrRecogerObj();
		
	break;
}