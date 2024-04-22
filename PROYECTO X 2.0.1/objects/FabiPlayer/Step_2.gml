if(state = "muerto"){
	exit;
}

if (!collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false)){
	gravity = .3; 
	

} 


if (!collision_rectangle(x - 8, y, x + 8, y + 1, ParedHorizontal, false, false)) { 
	gravity = .3;
	
	
}





if (!place_meeting(x, y + 1, Pared) && !place_meeting(x, y + 1, ParedHorizontal)) {
	sprite_index = Player_Salto;

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


var pisoH = collision_rectangle(x - 8, y, x + 8, y + vspeed, ParedHorizontal, false, false);
if (pisoH) {
	y = pisoH.y;
	vspeed = 0;
	gravity = 0; 
	sprite_index = Player_Idle; 
	
	
	if (keyboard_check(ord("A")) && pisoH) {
	sprite_index = Player_Ataque; 
	
	} else {
		sprite_index = Player_Idle;  
	}
	
	var Movi = keyboard_check(vk_right) - keyboard_check(vk_left);
	if (Movi != 0){
	
	image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
	sprite_index = Player_Run; 
		
} else {
	sprite_index = Player_Idle; 
	
}
		
				
}


var pisoChico = collision_rectangle(x - 8, y, x + 8, y + vspeed, ParePara, false, false);
if (pisoChico) {
	y = pisoChico.y;
	vspeed = 0;
	gravity = 0; 
	sprite_index = Player_Idle; 
	
	
	if (keyboard_check(ord("A")) && pisoChico) {
	sprite_index = Player_Ataque; 
	
	} else {
		sprite_index = Player_Idle;  
	}
	
	var Movi = keyboard_check(vk_right) - keyboard_check(vk_left);
	if (Movi != 0){
	
	image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
	sprite_index = Player_Run; 
	
	
	
	} else {
		sprite_index = Player_Idle; 
	
	}
					
} else if(vspeed < 0) {
	var techo = collision_rectangle(x - 8, y - 90, x + 8, y - 90 + vspeed, ParePara, false, false);		
	if (techo) {
		y = techo.y + techo.sprite_height + 90;
		vspeed = 0;
			
	}
	
	
}




if (keyboard_check(ord("A"))) {
	sprite_index = Player_Ataque; 
	if(Esperar == 4) {
		Esperar = 0; 
		
	}
	
} 

if (hp <= 0) {
	
	sprite_index = SpriteMuerte;
	state = "muerto";
	

} 
	




