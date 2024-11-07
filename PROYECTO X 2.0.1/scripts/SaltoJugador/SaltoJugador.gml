// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SaltoJugador(){
	
	if (input.salto && saltoDoble != 1){
		saltoDoble += 1;
		vspeed -= 5;
		sprite_index = Pink_Monster_JumpUp;
	}
	
	if(collision_rectangle(x - 8, y, x + 8, y + 1, Pared, false, false) && saltoDoble > 0){
		saltoDoble = 0;

	}

}