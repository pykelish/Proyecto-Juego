/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Verifica si se ha presionado el botón izquierdo del mouse
if (mouse_check_button_pressed(mb_left)) {
    // Cuando se clickea en el input de nombre
    if (mouse_x > input_name_x && mouse_x < input_name_x + input_name_w &&
        mouse_y > input_name_y && mouse_y < input_name_y + input_name_h) {
        input_focused = 0;  // Focalizar en el campo de nombre
    }

    // Cuando se clickea en el input de contraseña
    if (mouse_x > input_password_x && mouse_x < input_password_x + input_password_w &&
        mouse_y > input_password_y && mouse_y < input_password_y + input_password_h) {
        input_focused = 1;  // Focalizar en el campo de contraseña
    }

    // Verificar si se hizo clic en el botón de registro
    if (mouse_x > button_register_x && mouse_x < button_register_x + button_register_w &&
        mouse_y > button_register_y && mouse_y < button_register_y + button_register_h) {
        // Acciones de registro aquí (por ejemplo, enviar los datos al servidor)
		// Definir la URL del servidor Node.js
		var url = "http://192.168.1.87:8080/register"; // Cambia esto a tu URL

		// Crear los datos en formato JSON
		var data_json = "{\"name\":\"" + input_name + "\", \"password\":\"" + input_password + "\"}";

		// Enviar la solicitud POST
		http_id = http_post_string(url, data_json);

        show_message("Registrando: " + input_name);
    }
}

