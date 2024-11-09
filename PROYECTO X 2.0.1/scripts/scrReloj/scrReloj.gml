function scrReloj(){
	if(alarma_segundo == 0){
		segundos++;
	
		if(segundos == 60){
			minutos++;
			segundos = 0;
		}
	
		if(minutos == 60){
			horas++;
			minutos = 0;
		}
		alarma_segundo = room_speed;

	} else {
		alarma_segundo--;

	}
}