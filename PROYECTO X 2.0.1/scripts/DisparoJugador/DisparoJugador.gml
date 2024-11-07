function DisparoJugador(){
	
	DisparoRatio -=1; 
	
	if (input.disparo && DisparoRatio <= 0) {
		var Buum = instance_create_layer(x + 47 * image_xscale, y - 29, "MonedasyObjetos", Bumeran); 
		//audio_play_sound(SonBumerang, 1, false);
		sprite_index = Pink_Monster_Throw;
		Buum.image_xscale = image_xscale; 
		Buum.hspeed *= image_xscale; 
		
		DisparoRatio = 20;
		

	}
}