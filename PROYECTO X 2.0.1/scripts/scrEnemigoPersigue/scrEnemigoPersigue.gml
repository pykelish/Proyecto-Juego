function scrEnemigoPersigue() {
    var dx = 0;
    var dy = 0;
    
    if (instance_exists(FabiPlayer)) {
        dx = FabiPlayer.x - x;
        dy = FabiPlayer.y - y;  // Diferencia en Y para Florcaminando
    } else {
        dx = 0;
        dy = 0;
    }
    
    // Comprobación de distancia para 'Florcaminando'
    if (object_index == FlorCaminando) {
        if (sign(dx) == image_xscale && abs(dx) <= 280 && abs(dy) <= 20) {  // Ajusta el valor de `dy` según la proximidad deseada en Y
            state = "siguiendo";
        }
    }
    // Comprobación de distancia para 'obj_Abeja_Enemigo'
    else if (object_index == obj_Abeja_Enemigo) {
        if (sign(dx) == image_xscale && abs(dx) <= 280) {
            state = "siguiendo";
        }
    }
}
