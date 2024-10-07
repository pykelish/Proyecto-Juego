/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Event: Draw - Dibujar los inputs y botón de registro
draw_self(); // Para dibujar el objeto si tienes algún sprite

// Dibujar el campo del nombre
if (input_focused == 0) {
    draw_set_color(c_white); // Cambiar color cuando está seleccionado
} else {
    draw_set_color(c_ltgray);
}
draw_rectangle(input_name_x, input_name_y, input_name_x + input_name_w, input_name_y + input_name_h, false);
draw_set_color(c_black);
draw_text(input_name_x + 10, input_name_y + 10, "Nombre: " + input_name);

// Dibujar el campo de la contraseña
if (input_focused == 1) {
    draw_set_color(c_white); // Cambiar color cuando está seleccionado
} else {
    draw_set_color(c_ltgray);
}
draw_rectangle(input_password_x, input_password_y, input_password_x + input_password_w, input_password_y + input_password_h, false);
draw_set_color(c_black);
draw_text(input_password_x + 10, input_password_y + 10, "Contrasenia: " + string_repeat("*", string_length(input_password)));

// Dibujar el botón de registro
draw_set_color(c_white);
draw_rectangle(button_register_x, button_register_y, button_register_x + button_register_w, button_register_y + button_register_h, false);
draw_set_color(c_black);
draw_text(button_register_x + 50, button_register_y + 20, "Registrar");
