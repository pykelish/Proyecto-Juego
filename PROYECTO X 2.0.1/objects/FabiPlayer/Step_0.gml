if(state = "muerto"){
	exit;
}

var Movi = keyboard_check(vk_right) - keyboard_check(vk_left);

if (Movi != 0){
	
	if(place_free(x + Movi * 10, y)) { ///para verificar si a donde queremos caminar es un lugar libre (colisiones)
		x += Movi * 3;
	}
	
	if(place_free(x + Movi * 4, y) && keyboard_check(vk_shift)){
		x += Movi * 3;
	}

	image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
	sprite_index = Pink_Monster_Walk;
	
	if(keyboard_check(vk_shift)){
		image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
		sprite_index = Pink_Monster_Run;
	}
	
	if (keyboard_check_pressed(vk_space) && dashProgress <= 0){
    if (Movi < 0){
        x -= 80;
        sprite_index = Pink_Monster_Roll;
    } else if (Movi > 0){
        x += 80;
        sprite_index = Pink_Monster_Roll;
    }
    
    image_xscale = Movi;
    
    // Inicia el dash
    dashProgress = 1;
    alarm[0] = room_speed / 3; // Establece la alarma para detener el dash después de 1 segundo (room_speed / 3)
	}
	
	
	
	if (dashProgress > 0 && !alarm[0]){
    var dashSpeed = 80 / room_speed / 3; // Velocidad de movimiento del dash (80 unidades en 1 segundo)
    if (Movi < 0){
        x -= dashSpeed;
    } else if (Movi > 0){
        x += dashSpeed;
    }
    
    dashProgress -= 1;
	}
	
	if (alarm[0] == 0){
	    dashProgress = 0;
	}


	
	if (keyboard_check(ord("A"))) {
	sprite_index = Pink_Monster_Throw; 
	
	
	} 
	
} else {
	sprite_index = Pink_Monster_Idle; 
	
}


if (keyboard_check_pressed(vk_up) && !dobleSalto){
    contadorSaltos += 1;
    vspeed = -5;
    sprite_index = Pink_Monster_JumpUp;
    audio_play_sound(SonidoSalto, 1, false);
        
    if (contadorSaltos > 0){
        dobleSalto = true;
		sprite_index = Pink_Double_Jump;
    }
        
}

if (collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false) or collision_rectangle(x - 8, y, x + 8, y + 1, ParePara, false, false)){
    dobleSalto = false;
    contadorSaltos = 0;
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
	sprite_index = Pink_Monster_JumpUp;
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

