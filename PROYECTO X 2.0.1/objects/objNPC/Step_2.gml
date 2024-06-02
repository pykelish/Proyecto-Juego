
//Si el input (acción) cambió


/*if(state = "muerto"){
	exit;
}*/

if (!collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false) && enEscalera==false ){
	gravity = .3; 
	

} 


if (!place_meeting(x, y + 1, Pared) && enEscalera = false) {
	sprite_index = Dude_Monster_JumpFall;

}

if(place_meeting(x, y + 1, ParePara) && enEscalera = true){
	sprite_index = Dude_Monster_Climb;

}


if (vspeed > 0){
	var piso = collision_rectangle(x - 8, y, x + 8, y + vspeed, Pared, false, false);
	if (piso){
		y = piso.y;
		vspeed = 0;
		gravity = 0; 
		
	}
	
} else if(vspeed < 0) {
	var techo = collision_rectangle(x - 8, y - 90, x + 8, y - 90 + vspeed, Pared, false, false);		
	if (techo) {
		y = techo.y + techo.sprite_height + 90;
		vspeed = 0;
			
	}
	
	
}

