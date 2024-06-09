/// Evento Left Pressed del botón
// Obtener la contraseña de forma asíncrona
var async_request = get_string_async("Ingrese su contraseña:", "");
global.async_request_id = async_request; // Guardar el ID de la solicitud asíncrona

// Crear un JSON con el nombre
var json_map = ds_map_create();
ds_map_add(json_map, "name", global._name);

// Crear un nuevo mapa (ds_map) para almacenar los encabezados
var headers = ds_map_create();

// Agregar el encabezado "Content-Type" para indicar que estás enviando datos JSON
ds_map_add(headers, "Content-Type", "application/json");

// Configurar la solicitud HTTP con los encabezados actualizados

// Liberar la memoria del mapa
ds_map_destroy(json_map);

// Liberar la memoria del mapa de encabezados
ds_map_destroy(headers);
