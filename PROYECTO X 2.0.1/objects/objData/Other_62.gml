if (ds_map_find_value(async_load, "id") == get) {
    if (ds_map_find_value(async_load, "status") == 0) {
        var result = ds_map_find_value(async_load, "result");
        
        // Mostrar el JSON recibido para verificar su formato
        show_message("JSON received: " + string(result));
        
        // Intentar decodificar el JSON
        var resultMap = json_decode(result);
        
        // Verificar si resultMap fue creado correctamente
        if (resultMap == undefined) {
            show_message("Error: json_decode failed.");
            global.ERROR = "JSON DECODE FAILED";
        } else {
            // Mostrar el mapa decodificado para verificar su contenido
            show_message("Decoded JSON: " + ds_map_to_string(resultMap));
            
            // Verificar si "players" existe y es una lista
            if (ds_map_exists(resultMap, "players")) {
                var list = ds_map_find_value(resultMap, "players");
                if (ds_exists(list, ds_type_list)) {
                    show_message("Players list found.");
                    
                    var xx = 100;
                    var yy = 100;
                    
                    for (var i = 0; i < ds_list_size(list); i++) {
                        var map = ds_list_find_value(list, i);
                        with (instance_create_layer(xx, yy, "Instances", objSelector)) {
                            _id = ds_map_find_value(map, "id");
                            _name = ds_map_find_value(map, "name");
                            _highscore = ds_map_find_value(map, "highscore");
							show_message(_name);
                        }
                        xx += 150;
                        ds_map_destroy(map);
                    }
                    
                    ds_list_destroy(list);
                } else {
                    show_message("Error: 'players' is not a list.");
                }
            } else {
                show_message("Error: 'players' key not found in resultMap.");
            }
            
            ds_map_destroy(resultMap);
        }
    } else {
        global.ERROR = "COULD NOT FETCH DATA";
    }
    global.LOADING = false;
}
