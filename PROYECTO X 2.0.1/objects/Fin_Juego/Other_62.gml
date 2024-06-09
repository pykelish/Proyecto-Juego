// Evento Asynchronous HTTP
if (ds_map_exists(async_load, "id")) {
    var id_ = ds_map_find_value(async_load, "id");

    // Verifica que la solicitud coincida
    if (id_ == global.Update_request) {
		
        var status = ds_map_find_value(async_load, "status");
        var result = ds_map_find_value(async_load, "result");
        var json_result = json_decode(result);
		
		
        // Verifica si la puntuación fue actualizada
        var changes = ds_map_find_value(json_result, "changes");
        if (changes > 0) {
			
			show_message("¡Felicidades, tu nueva puntuación máxima se actualizó correctamente!");
			
        } else {
			
			show_message("¡Tu puntuación máxima sigue inbatible!");
        }

        ds_map_destroy(json_result);
        room_goto(Game_Over);
    }
}
