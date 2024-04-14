var Movi = keyboard_check(vk_right) - keyboard_check(vk_left);

if (Movi != 0){
	x += Movi * 5;
	
	image_xscale = Movi; /// para escalar la imagen y se voltee para a su respectivo aldo de movimiento
	sprite_index = Player_Run; 
	
	if (keyboard_check(ord("A"))) {
	sprite_index = Player_Ataque; 
	
	} 
	
} else {
	sprite_index = Player_Idle; 
	
}