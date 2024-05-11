// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scrMovimiento(hor, spd, width,height){
	var xTo = x + hor * spd;
	var moved = false;
	
	for (var i = 1; i < 4; i++){
		var wall = collision_rectangle(xTo - width, y - i - height, xTo + width, y - i, Pared, true, true);
		if(!wall || !wall.solid){
			x = xTo;
			moved = true;
			if (vspeed == 0){
				y -= i - 1;
			
			}
			break;			
		}
	
	}
}