//Este ciclo nos permite pintar en la interfaz los nombres de los jugadores (En la sesión del servidor).
for (var i=0; i<array_length(global.PLAYERS); i++){

	draw_text(0, i*16, global.PLAYERS[i].name);	
	
}