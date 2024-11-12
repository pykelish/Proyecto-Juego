
if (place_meeting(x, y, FabiPlayer) && !Final) {
	
    Final = true;    
	
	// Crear un JSON con los datos
    // Crear un nuevo mapa (ds_map) para almacenar los datos JSON
	
	var json_map = ds_map_create();
	ds_map_add(json_map, "id", global._id);
	ds_map_add(json_map, "highscore", FabiPlayer.Punto);
	ds_map_add(json_map, "time_played", global.tiempo_jugado);

	// Convertir el mapa en formato JSON
	var json_data = json_encode(json_map);

	// Crear un nuevo mapa (ds_map) para almacenar los encabezados
	var headers = ds_map_create();

	// Agregar el encabezado "Content-Type" para indicar que estás enviando datos JSON
	ds_map_add(headers, "Content-Type", "application/json");


	// Configurar la solicitud HTTP con los encabezados actualizados
	global.Update_request = http_request("http://192.168.1.170:8080/highscore/", "PUT", headers, json_data);


    // Liberar la memoria del mapa
    ds_map_destroy(json_map);


}


if (Final) {
	
	show_message("Puntuación obtenida: " + string(FabiPlayer.Punto) + "Tiempo jugado: " + global.tiempo_jugado);
	
}

