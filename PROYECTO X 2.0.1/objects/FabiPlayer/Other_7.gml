if (estado == "muerto") {
    image_speed = 0;
    //audio_play_sound(SonidoMuerteEnem, 1, false);
    image_index = image_number = -1;
    //audio_stop_sound(MusicaLevel1);
    //audio_stop_sound(BossMusica);

    // Guarda los datos finales en variables globales
    global.final_puntos = Punto; // Supongamos que "puntos" es la variable de puntos del jugador
	// Guardar el tiempo final
	var texto_hora = string(horas);
	var texto_minutos = string(minutos);
	var texto_segundos = string(segundos);

	// Asegurarse de que el formato sea "hh:mm:ss"
	if (string_length(texto_hora) == 1) texto_hora = "0" + texto_hora;
	if (string_length(texto_minutos) == 1) texto_minutos = "0" + texto_minutos;
	if (string_length(texto_segundos) == 1) texto_segundos = "0" + texto_segundos;

	// Guardar el tiempo en una variable global antes de cambiar de room
	global.tiempo_final = texto_hora + ":" + texto_minutos + ":" + texto_segundos;

    room_goto(Capturas); // Cambia de "room" a la pantalla de Game Over
}
