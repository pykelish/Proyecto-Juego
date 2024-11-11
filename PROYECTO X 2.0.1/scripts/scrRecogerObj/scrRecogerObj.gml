function scrRecogerObj() {
    // Detectar la pulsación de la tecla E para recoger o soltar el objeto
    if (input.recoger) {
        if (!carrying) {
            // Inicializar la variable para el objeto más cercano y la menor distancia
            var nearest = noone;
            var nearest_distance = 32; // Distancia mínima para recoger el objeto

            // Iterar sobre los tipos de objetos recolectables para encontrar el más cercano
            for (var i = 0; i < array_length(recolectables); i++) {
                var obj_type = recolectables[i];
                var obj_nearest = instance_nearest(x, y, obj_type);
                
                if (obj_nearest != noone) {
                    var distance = point_distance(x, y, obj_nearest.x, obj_nearest.y);
                    if (distance < nearest_distance) {
                        nearest = obj_nearest;
                        nearest_distance = distance;
                    }
                }
            }

            // Si se encontró un objeto recolectable cercano, recogerlo
            if (nearest != noone) {
                carrying = true;
                held_object = nearest;
                estado = "cargando"; // Cambiar estado a "cargando"
                // held_object.visible = false; // Opcional: oculta el objeto mientras está en manos
            }
        } else {
            // Soltar el objeto
            carrying = false;
            if (held_object != noone) {
                held_object.x = x; // Coloca el objeto en la posición del jugador al soltarlo
                held_object.y = y;
                held_object.visible = true; // Vuelve a hacerlo visible
                held_object = noone;
                estado = "idle"; // Cambia el estado a "idle" al soltar el objeto
            }
        }
    }

    // Si el jugador está cargando un objeto, actualizar posición del objeto
    if (carrying && held_object != noone) {
        held_object.x = x;
        held_object.y = y - (sprite_height / 1.5); // Ajusta la altura del objeto sobre el jugador
    }
}

