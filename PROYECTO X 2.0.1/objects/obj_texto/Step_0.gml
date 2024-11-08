/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var ancho = string_width(textobtn);
var alto = string_height(textobtn);

// Detecta si el mouse está sobre el texto (ajustado al centro del objeto)
if (mouse_x > x - ancho / 2 && mouse_x < x + ancho / 2 && mouse_y > y - alto / 2 && mouse_y < y + alto / 2) {
    color_texto = make_color_rgb(39, 174, 96);  // Color cuando el mouse está sobre el texto
    
    // Si se hace clic, cambia el color
    if (mouse_check_button_pressed(mb_left)) {
		room_goto(Client_Menu2OF);
        color_texto = c_red;  // Cambia el color a rojo cuando se hace clic
    }
} else {
    color_texto = c_white; // Color predeterminado cuando el mouse no está sobre el texto
}
