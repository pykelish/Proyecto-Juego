/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Tamaño de escalado para el sprite (ajústalo según sea necesario)
var scale = 2.0; // Escala del sprite (2x más grande)

// Dibujar el sprite escalado
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1);

// Configuración del texto
var text_size = 24; // Tamaño más grande del texto
var text_color = c_white; // Color del texto

// Tamaño del sprite (ancho y alto escalados)
var spriteWidth = sprite_get_width(sprite_index) * scale;
var spriteHeight = sprite_get_height(sprite_index) * scale;

// Coordenadas para el nombre del jugador
var name_x = x + (spriteWidth / 2); // Centrar el texto horizontalmente debajo del sprite
var name_y = y + spriteHeight + 10; // Debajo del sprite (10 píxeles de margen)

// Coordenadas para el puntaje
var score_x = name_x; // Alinear horizontalmente con el nombre
var score_y = name_y + text_size + 5; // Debajo del nombre (5 píxeles de margen)

// Configurar las propiedades del texto
draw_set_color(text_color); // Color del texto
draw_set_font(fnt_texto); // Fuente del texto
draw_set_valign(fa_top); // Alinear verticalmente arriba
draw_set_halign(fa_center); // Alinear horizontalmente al centro

// Dibujar el nombre del jugador
draw_text(name_x, name_y, _name);

// Dibujar el puntaje del jugador
draw_text(score_x, score_y, _highscore);
