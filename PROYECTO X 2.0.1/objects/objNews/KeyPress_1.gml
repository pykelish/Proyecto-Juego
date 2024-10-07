/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// objNew - Key Press Event (Any Key)
// Manejar entrada en función del campo enfocado (nombre o contraseña)
if (input_focused == 0 || input_focused == 1) {
    var key = keyboard_lastchar;
    
    // Solo caracteres imprimibles (evitar Enter y Backspace)
    if (ord(key) >= 32 && ord(key) <= 126) {
        // Campo de nombre
        if (input_focused == 0 && string_length(input_name) < max_length) {
            input_name += key;
        }
        // Campo de contraseña
        else if (input_focused == 1 && string_length(input_password) < max_length) {
            input_password += key;
        }
    }
}

// Eliminar caracteres con Backspace dependiendo del campo enfocado
if (keyboard_check_pressed(vk_backspace)) {
    // Campo de nombre
    if (input_focused == 0 && string_length(input_name) > 0) {
        input_name = string_delete(input_name, string_length(input_name), 1);
    }
    // Campo de contraseña
    else if (input_focused == 1 && string_length(input_password) > 0) {
        input_password = string_delete(input_password, string_length(input_password), 1);
    }
}

// Cambia el foco al presionar Enter
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_tab)) {
    input_focused = (input_focused + 1) % 2; // Cambia entre nombre y contraseña
}
