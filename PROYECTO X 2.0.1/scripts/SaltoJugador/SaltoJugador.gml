// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SaltoJugador(){
	
	var salto=keyboard_check_pressed(vk_up);
	input.salto=salto;
	if ( input.salto && !dobleSalto){
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



	/*if (keyboard_check_pressed(vk_up) && collision_rectangle(x - 8, y, x + 8, y + 1, ParedHorizontal, false, false)){
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
	
	} */

}