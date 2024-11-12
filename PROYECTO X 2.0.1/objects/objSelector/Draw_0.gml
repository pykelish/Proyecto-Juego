// Evento Draw de objSelector

// Dibujar el sprite con la escala adecuada
if (_selected) {
    var scale_factor = 1.6; // Factor de escala para aumentar el tamaño
    draw_sprite_ext(sprite_index, image_index, x, y, scale_factor, scale_factor, 0, c_white, 1);
} else {
    draw_sprite(sprite_index, image_index, x, y);
}

// Configuración de texto
var text_size = 16; // Tamaño del texto
var text_color = c_white; // Color del texto 

// Dibujar el nombre del jugador
var name_x = x; // Mismo x que la instancia
var name_y = y + 10; // Debajo del sprite

draw_set_color(text_color);// Color del texto
draw_set_font(fnt_texto);// Configurar el color del texto
draw_set_valign(fa_top); // Alinear verticalmente arriba
draw_set_halign(fa_center); // Alinear horizontalmente al centro
draw_text(name_x, name_y, _name);
