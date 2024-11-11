
function scrEnemigoAtaque(){
	DisparoRatio -=1;
	
	if (DisparoRatio <= 0){
		var disparo = instance_create_layer(x + 23 * image_xscale, y - 14, "MonedasyObjetos", disparo_Enemigo); 
		disparo.image_xscale = image_xscale; 
		disparo.hspeed *= image_xscale * -1;
		sprite_index = Attack__64x32_;
	
		DisparoRatio = 75;
	
	}
}