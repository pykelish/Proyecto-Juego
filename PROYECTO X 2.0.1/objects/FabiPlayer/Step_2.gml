
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
if (vspeed > 0 && enEscalera = false){
	var lista = ds_list_create();
	var colisiones = collision_rectangle_list(x - 8, y, x + 8, y + vspeed, Pared, true, true, lista, true);
	var piso = (colisiones > 0) ? lista [| 0] : noone;
	ds_list_destroy(lista);
	if (piso){
		
		if(piso.object_index == Pared) {
			for (var i = 0; i <= piso.sprite_height; i++){
				var line_y = piso.y + piso.sprite_height - 1 - i;
			
				if(!collision_line(x - 8, line_y, x + 8, line_y, piso, true, true)){
					y = line_y + 1;
					vspeed = 0;
					gravity = 0;
					break;
				}
			
			}
		} else if(y <= piso.y + 3 && y + vspeed >= piso.y) {
			y = piso.y;
			vspeed = 0;
			gravity = 0; 
		}

	}


}



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






