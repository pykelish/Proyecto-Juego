/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Evento Asynchronous HTTP
/// Evento Async Event - Registro
if (async_load[? "id"] == http_id) {
	
    var name = input_name; // Obtener el nombre del jugador
    var password = input_password; // Obtener la contraseña desde la solicitud asíncrona

    // Verificar si se ingresó un nombre y una contraseña
    if (string_length(name) > 0 && string_length(password) > 0) {
        // Convertir la contraseña a cadena de texto
        var password_string = string(password);

        // Crear un JSON con los datos del registro
        var json_map = ds_map_create();
        ds_map_add(json_map, "name", name);
        ds_map_add(json_map, "password", password_string); // Aquí se usa la contraseña formateada como cadena de texto

        // Convertir el mapa en formato JSON
        var json_data = json_encode(json_map);

        // Crear un nuevo mapa (ds_map) para almacenar los encabezados
        var headers = ds_map_create();

        // Agregar el encabezado "Content-Type" para indicar que estás enviando datos JSON
        ds_map_add(headers, "Content-Type", "application/json");

        // Configurar la solicitud HTTP con los encabezados actualizados
        global.register_request = http_request("http://192.168.1.73:8080/register/", "POST", headers, json_data);
		show_message("Registro exitoso -- Redireccionando");
		room_goto(ClientLoad);
        // Liberar la memoria del mapa
        ds_map_destroy(json_map);

        // Liberar la memoria del mapa de encabezados
        ds_map_destroy(headers);
    } else {
        // Mostrar mensaje indicando que se debe ingresar un nombre y una contraseña
        show_message("Debes ingresar un nombre y una contraseña.");
    }
}
