//Le damos al npc del servidor o del cliente ajeno al propio la opción de moverse...
//... usando claro la lista input, para que sea el movimiento enviado por el cliente
if(enEscalera == true && !place_meeting(x,y,ParePara)){
	enEscalera = false;
}

if(place_meeting(x,y,ParePara) && place_meeting(x,y+1,Pared)){
	if(input.escaleraArriba){
		enEscalera = true;
		
	}
}

if(place_meeting(x,y+1,ParePara)){
	if(input.escaleraAbajo){
		enEscalera = true;
		
	}
}

if(enEscalera == true && input.escaleraArriba){
	y = y - 3;
	
	if(!place_meeting(x,y,ParePara)){
		enEscalera = false;
		while(!place_meeting(x,y+1,ParePara)){
			y+=1;
		}
	}
	

}

if(enEscalera == true && input.escaleraAbajo){
	var wallID, itsOK;
	itsOK = false;
	wallID = instance_place(x,y+3,Pared);
	if(wallID < 0){
		y = y + 3
	} else {
		with wallID {
			itsOK = position_meeting(x,y,ParePara)
		}
		if( itsOK == true){
			y = y + 3
		} else{
			while(!place_meeting(x,y+1,Pared)){
				y+=1
				enEscalera = false;
			}
		}
	}


}


if(input.movi != 0) {
	
	if(!place_meeting(x + input.movi * 10, y, Pared) && enEscalera = false) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
		x += input.movi * 3;
		image_xscale= sign(input.movi);
		sprite_index = Dude_Monster_Walk;
	}
	
	if(!place_meeting(x + input.movi * 4, y, Pared) && input.correr && enEscalera = false){
		x += input.movi * 3;
		image_xscale = sign(input.movi);
		sprite_index = Dude_Monster_Run;
	}
		
		
	
}
else{

	sprite_index = Dude_Monster_Idle;	
	
}

if (input.salto && saltoDoble != 1){
	saltoDoble += 1;
	vspeed -= 5;
	sprite_index = Dude_Monster_JumpUp;
}
	
if(collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false) && saltoDoble > 0){
	saltoDoble = 0;

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