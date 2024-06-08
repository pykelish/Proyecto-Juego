// Evento Draw de objSelector
draw_self(); // Dibuja la instancia de objSelector

// Obtener el número total de instancias de objSelector
var total_instances = instance_number(objSelector);

// Configuración de texto
var text_size = 16; // Tamaño del texto
var text_color = c_white; // Color del texto 

// Iterar sobre todas las instancias de objSelector
for (var i = 0; i < total_instances; i++) {
    var player_instance = instance_find(objSelector, i); // Obtener la instancia del jugador
    
    // Obtener la posición de dibujo del nombre
    var name_x = player_instance.x; // Mismo x que la instancia
    var name_y = player_instance.y + player_instance.sprite_height;
    

    draw_set_color(text_color); // Configurar el color del texto
    draw_set_valign(fa_center); // Alinear verticalmente al centro del texto
    draw_set_halign(fa_center); // Alinear horizontalmente al centro del texto
    draw_text(name_x, name_y, player_instance._name); // Dibujar el nombre del jugador
	
	if (player_instance._selected) {
        // Aumentar el tamaño
        var scale_factor = 1.6; // Factor de escala para aumentar el tamaño
        draw_sprite_ext(player_instance.sprite_index, player_instance.image_index, player_instance.x, player_instance.y, scale_factor, scale_factor, 0, c_white, 1);

    }
}