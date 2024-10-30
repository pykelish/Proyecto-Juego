
//Si el input (acción) cambió
if(didInputChange()){
	
	//Enviamos el input actual
	srcSendInput();
	
	//Actualizamos la variable lastInput para que pueda permitir cambiar el input original
	srcUpdateLastInput();
		
}

/*if(state = "muerto"){
	exit;
}*/


if ((!collision_rectangle(x - 8, floor(y), x + 8, ceil(y)+1, Pared, true, true) || vspeed!= 0) && enEscalera==false ){
	gravity = .3; 
}


if (!place_meeting(x, y + 1, Pared) && enEscalera = false) {
	sprite_index = Pink_Monster_JumpFall;

}

if(place_meeting(x, y + 1, ParePara) && enEscalera = true){
	sprite_index = Pink_Monster_Climb;

}

/*if (keyboard_check(ord("A"))) {
	sprite_index = Pink_Monster_Throw; 
	if(Esperar == 4) {
		Esperar = 0; 	
	}
} 

if (hp <= 0) {
	
	sprite_index = SpriteMuerte;
	state = "muerto";
	

} */






