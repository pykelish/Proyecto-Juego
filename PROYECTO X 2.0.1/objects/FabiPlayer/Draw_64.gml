draw_text(105, 70, string("Vidas=") + string(hp)); 
draw_text(30, 30, string("Puntos=") + string(Punto));

var texto_hora = string(horas);
var texto_minutos = string(minutos);
var texto_segundos = string(segundos);

if(string_length(texto_hora) == 1){
	texto_hora = "0" + texto_hora;
	
}
if(string_length(texto_minutos) == 1){
	texto_minutos = "0" + texto_minutos;	
}
if(string_length(texto_segundos) == 1){
	texto_segundos = "0" + texto_segundos;	
}

draw_text(500, 20, texto_hora + ":" + texto_minutos + ":" + texto_segundos);