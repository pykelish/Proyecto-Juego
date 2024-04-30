if(state = "muerto"){
	exit;
}

var Movi = keyboard_check(vk_right) - keyboard_check(vk_left);

if (Movi != 0){
	
	if(place_free(x + Movi * 5, y)) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
		x += Movi * 2;
	}
	
	if(place_free(x + Movi * 5, y) && keyboard_check(vk_shift)){
		x += Movi * 5;
	}

	image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
	sprite_index = Pink_Monster_Walk;
	
	if(keyboard_check(vk_shift)){
		image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
		sprite_index = Pink_Monster_Run;
	}
	
	if (keyboard_check(ord("A"))) {
	sprite_index = Pink_Monster_Throw; 
	
	
	} 
	
} else {
	sprite_index = Pink_Monster_Idle; 
	
}


if (keyboard_check_pressed(vk_up) && collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false)){
	vspeed = -15;
	sprite_index = Pink_Monster_JumpUp;
	audio_play_sound(SonidoSalto, 1, false);
	
}


if (keyboard_check_pressed(vk_up) && collision_rectangle(x - 8, y, x + 8, y + 1, ParedHorizontal, false, false)){
	vspeed = -5;
	audio_play_sound(SonidoSalto, 1, false); 
	if (keyboard_check(ord("A"))) {
	sprite_index = Pink_Monster_Throw; 
	}
}

if (keyboard_check_pressed(vk_up) && collision_rectangle(x - 8, y, x + 8, y + 1, ParePara, false, false)){
	vspeed = -5;
	audio_play_sound(SonidoSalto, 1, false); 
	if (keyboard_check(ord("A"))) {
	sprite_index = Pink_Monster_Throw; 
	} 
	
} 


DisparoRatio -=1; 
if (keyboard_check(ord("A")) && DisparoRatio <= 0) {
	var Buum = instance_create_layer(x + 47 * image_xscale, y - 29, "Instances", Bumeran); 
	audio_play_sound(SonBumerang, 1, false); 
	Buum.image_xscale = image_xscale; 
	Buum.hspeed *= image_xscale; 
	DisparoRatio = 20; 

}

