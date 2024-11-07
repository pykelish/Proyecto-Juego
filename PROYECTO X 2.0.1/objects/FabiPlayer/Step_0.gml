//Se guarda en la lista de movimientos del usuario (devuelve 0 o 1 dependiendo del estado del jugador)
input.movi = keyboard_check(ord("D")) - keyboard_check(ord("A"));
input.correr = keyboard_check(vk_shift);
input.salto = keyboard_check_pressed(vk_space);
input.escaleraArriba = keyboard_check(vk_up);
input.escaleraAbajo = keyboard_check(vk_down);
input.dash =  keyboard_check_pressed(ord("S"));
input.gameOver = keyboard_check_pressed(ord("Q"));
input.disparo = keyboard_check_pressed(ord("J"));
//Si está en movimiento, se cambia de posición IMPORTANTE USAR INPUT CON LA PROPIEDAD...
//... DEL MOVIMIENTO
if(estado = "muerto"){
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
		if(input.dash){
			scrMovimiento(sign(image_xscale), 24, width,height);
		}
		
	break;
}









