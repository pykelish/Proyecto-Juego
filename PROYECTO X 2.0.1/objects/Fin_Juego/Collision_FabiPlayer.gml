/*if (keyboard_check_pressed(ord("Q"))){
	
	FabiPlayer.x = xx;
	FabiPlayer.y = yy;
	room_goto(NextRoom);
	
	
}*/

if (place_meeting(x, y, FabiPlayer) && !Final) {
	
    Final = true;    // Crear un JSON con los datos
    // Crear un nuevo mapa (ds_map) para almacenar los datos JSON
	var json_map = ds_map_create();
	ds_map_add(json_map, "id", global._id);
	ds_map_add(json_map, "highscore", FabiPlayer.Punto);

	// Convertir el mapa en formato JSON
	var json_data = json_encode(json_map);

	// Crear un nuevo mapa (ds_map) para almacenar los encabezados
	var headers = ds_map_create();

	// Agregar el encabezado "Content-Type" para indicar que estás enviando datos JSON
	ds_map_add(headers, "Content-Type", "application/json");


	// Configurar la solicitud HTTP con los encabezados actualizados
	var request = http_request("http://localhost:8080/highscore/", "PUT", headers, json_data);


    // Liberar la memoria del mapa
    ds_map_destroy(json_map);


}


if (Final) {
	
	show_message("Puntuación obtenida: " + string(FabiPlayer.Punto));
	
    if (request != -1) {
		
        show_message("¡Felicidades, tu nueva puntuación máxima se actualizó correctamente!");
		
    }
    room_goto(Game_Over);
	
}

