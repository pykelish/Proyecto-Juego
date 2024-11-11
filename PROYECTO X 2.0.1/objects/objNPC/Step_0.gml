if(estado == "muerto"){
	exit;
}

switch (estado){
	case "idle":
		
		MovimientoJugador("npc",characterType);
		SaltoJugador("npc");
		DisparoJugador("npc");
		DashJugador("npc");
		scrRecogerObj();
		break;
		
	case "dash":
		scrMovimiento(sign(image_xscale), 6, width,height);
		if(input.dash){
			scrMovimiento(sign(image_xscale), 24, width,height);
		}
		
	break;
	
	case "cargando":
		MovimientoJugador("npc",characterType);
		scrRecogerObj();
		
	break;
}