/// Evento Async Event - Dialog
if (async_load[? "id"] == global.async_request_id) {
    var password = async_load[? "result"]; // Obtener el resultado de la solicitud asíncrona

    // Verificar si se ingresó una contraseña
    if (string_length(password) > 0) {
        // Convertir la contraseña a cadena de texto
        var password_string = string(password);

        // Crear un JSON con los datos del login
        var json_map = ds_map_create();
        ds_map_add(json_map, "name", global._name);
        ds_map_add(json_map, "password", password_string); // Aquí usas la contraseña formateada como cadena de texto

        // Convertir el mapa en formato JSON
        var json_data = json_encode(json_map);

        // Crear un nuevo mapa (ds_map) para almacenar los encabezados
        var headers = ds_map_create();

        // Agregar el encabezado "Content-Type" para indicar que estás enviando datos JSON
        ds_map_add(headers, "Content-Type", "application/json");

        // Configurar la solicitud HTTP con los encabezados actualizados
        global.login_request = http_request("http://192.168.1.73:8080/login/", "POST", headers, json_data);

        // Liberar la memoria del mapa
        ds_map_destroy(json_map);

        // Liberar la memoria del mapa de encabezados
        ds_map_destroy(headers);
    } else {
        // Mostrar mensaje indicando que se debe ingresar una contraseña
        show_message("Debes ingresar una contraseña.");
    }
}

