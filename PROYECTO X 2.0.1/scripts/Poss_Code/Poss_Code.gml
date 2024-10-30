function Poss_Code(){

/*var rampa_inst = instance_place(x, y+1, Pared);
if ((!collision_rectangle(x - 8, floor(y), x + 8, ceil(y)+1, Pared, true, true) || vspeed != 0) && enEscalera == false) {
    // Verificar si el personaje está en una rampa
    if (rampa_inst != noone) {
        // Si la rampa está invertida
        if (rampa_inst.image_xscale == -1) {
            // Ajustar el comportamiento para la rampa invertida
            gravity = 0;
            vspeed = 0; // Detener la velocidad vertical en rampas invertidas
        } 
        // Si la rampa no está invertida
        else {
            gravity = 0;
            vspeed = 0; // Detener la velocidad vertical en rampas normales
        }
    } else {
        gravity = 0.3; // Gravedad normal si no está en rampas
    }
	gravity = 0.3;
} else {
    gravity = 0;
}*/

/*var lista = ds_list_create();
var colisiones = collision_rectangle_list(x - 8, y, x + 8, y + vspeed, Pared, true, true, lista, true);
var piso = (colisiones > 0) ? lista [| 0] : noone;
ds_list_destroy(lista);
if (piso){
		
	if(piso.object_index == Rampa) {
		for (var i = 0; i <= piso.sprite_height; i++){
			var line_y = piso.y + piso.sprite_height - 1 - i;

			if(!collision_rectangle(x - 8, line_y, x + 8, line_y, piso, true, true)){
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
}*/

/*var lista = ds_list_create();
var colisiones = collision_rectangle_list(x - 8, y, x + 8, y + vspeed, Pared, true, true, lista, true);
var piso = (colisiones > 0) ? lista[| 0] : noone;
ds_list_destroy(lista);

if (piso) {

    if (piso.object_index == Rampa) {
        // Calcular la pendiente de la rampa en función de su sprite
        var rampa_altura = piso.sprite_height;
        var rampa_ancho = piso.sprite_width;
        var distancia_x = clamp(x - piso.bbox_left, 0, rampa_ancho); // Asegurarnos de estar dentro de los límites de la rampa
        var altura_rampa_en_x = rampa_altura * (distancia_x / rampa_ancho); // Altura de la rampa en la posición actual del jugador
        var altura_suelo_rampa = piso.bbox_bottom - altura_rampa_en_x; // Altura real del suelo en esa parte de la rampa

        // Si el jugador está tocando o justo por encima de la rampa, ajustamos su posición
        if (y + vspeed > altura_suelo_rampa) {
            y = altura_suelo_rampa;
            vspeed = 0;
            gravity = 0;  // No hay gravedad mientras esté sobre la rampa
        } else {
            gravity = 0.3; // Ajusta este valor según la gravedad que usas en tu juego
        }

    } else if (y + vspeed >= piso.bbox_top) {
        // Si es un piso sólido normal
        y = piso.bbox_top;
        vspeed = 0;
        gravity = 0;
    }
}*/

		
	/*var xTo = x + input.movi * 3
	var moved = false;
	for (var i = 1; i < 8; i++){
		var piso = collision_rectangle(xTo - 6, y-i-1, xTo + 6, y-i, Pared, true, true);
		if(!piso || !piso.solid){
			if(input.correr){
				x = x + input.movi * 6;
				sprite_index = Pink_Monster_Run;
				image_xscale = sign(input.movi);
			} else {
				x = xTo;
				sprite_index = Pink_Monster_Walk;
				image_xscale = sign(input.movi);
			}
			
			moved = true;
			if(vspeed == 0){
				y -= i - 1;
			}
			break;
		}
		
		if(vspeed == 0 && moved){
			for(var i = 1; i < 8; i++){
				var piso = collision_rectangle(xTo-6, y+i-1, xTo+6, y+i, Rampa, true, true);
				if(piso){
					y+=i;
					break;
				}
			}
		}
		image_xscale = sign(input.movi);
		
	}*/



}