// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DisparoJugador(){
	
	DisparoRatio -=1; 
	input.disparo= keyboard_check(ord("A"));
	
	
	if (input.disparo && DisparoRatio <= 0) {
		var Buum = instance_create_layer(x + 47 * image_xscale, y - 29, "Instances", Bumeran); 
		audio_play_sound(SonBumerang, 1, false); 
		Buum.image_xscale = image_xscale; 
		Buum.hspeed *= image_xscale; 
		DisparoRatio = 20; 

	}
}