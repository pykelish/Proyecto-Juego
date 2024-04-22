switch (state) {
	case "muerto":
		image_speed = 0;
		audio_play_sound(SonidoMuerteEnem, 1, false); 
		image_index = image_number = -1;
		FabiPlayer.Punto += numPuntos;
		break;


} 