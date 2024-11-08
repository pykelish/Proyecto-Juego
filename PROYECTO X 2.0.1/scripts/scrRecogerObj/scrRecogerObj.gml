function scrRecogerObj() {
    // Detectar la pulsación de la tecla E para recoger o soltar el objeto
    if (input.recoger) {
        if (!carrying) {
            // Buscar el objeto recolectable más cercano
            var nearest = instance_nearest(x, y, obj_Bolsa);
            if (nearest != noone && point_distance(x, y, nearest.x, nearest.y) < 32) {
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
