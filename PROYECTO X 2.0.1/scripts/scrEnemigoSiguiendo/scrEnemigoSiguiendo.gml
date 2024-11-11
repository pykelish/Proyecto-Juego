function scrEnemigoSiguiendo() {
    var dx = 0;

    if (instance_exists(FabiPlayer)) {
        dx = FabiPlayer.x - x;
    } else {
        dx = 0;
    }
    
    // Movimiento y ataque para FlorCaminando
    if (object_index == FlorCaminando && abs(dx) > 220) {
        hor = sign(dx);
        image_xscale = hor * -1;
        scrMovimiento(hor, 2, 8, 8);
        sprite_index = Idle__64x32_;
    }
    // Movimiento y ataque para obj_Abeja_Enemigo
    else if (object_index == obj_Abeja_Enemigo) {
        hor = sign(dx);
        image_xscale = hor * -1;

        // Si el jugador está cerca, el enemigo deja de moverse y ataca
        if (abs(dx) <= 100) { 
            scrMovimiento(hor, 2, 8, 8);
            scrEnemigoAtaqueAbeja();
        } else {
            // Si está fuera de rango de ataque, continúa moviéndose
            sprite_index = Idle__36x34_;
			scrMovimiento(hor, 2, 8, 8);
        }
    }
    else {
        // Condiciones de ataque para Florcaminando
        if (object_index == FlorCaminando) {
            // Asegurarse de que Florcaminando se voltee hacia el jugador en cada ataque
            hor = sign(dx);
            image_xscale = hor * -1;
            scrEnemigoAtaque();
        }
    }
}


