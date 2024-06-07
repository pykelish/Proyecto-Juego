// Evento Draw de objSelector
draw_self(); // Dibuja la instancia de objSelector

// Obtener el número total de instancias de objSelector
var total_instances = instance_number(objSelector);

// Configuración de texto
var text_size = 30; // Tamaño del texto
var text_color = c_white; // Color del texto

// Iterar sobre todas las instancias de objSelector
for (var i = 0; i < total_instances; i++) {
    var player_instance = instance_find(objSelector, i); // Obtener la instancia del jugador
    
    // Obtener la posición de dibujo del nombre
    var name_x = player_instance.x; // Mismo x que la instancia
    var name_y = player_instance.y + player_instance.sprite_height -5; // Debajo de la instancia
    
; // Configurar la fuente del texto (reemplaza font_name con el nombre de tu fuente)
    draw_set_color(text_color); // Configurar el color del texto
    draw_set_valign(fa_center); // Alinear verticalmente al centro del texto
    draw_set_halign(fa_center); // Alinear horizontalmente al centro del texto
    draw_text(name_x, name_y, player_instance._name); // Dibujar el nombre del jugador
}
