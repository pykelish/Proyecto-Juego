function scrEnemigoAtaqueAbeja() {
    DisparoRatio -= 1;
    
    if (DisparoRatio <= 0) {
        // Crear el disparo justo en la posición del enemigo en X y ligeramente arriba en Y
        var disparo = instance_create_layer(x, y - 10, "MonedasyObjetos", disparo_Enemigo_Abeja); 
        disparo.image_xscale = image_xscale;

        // Asegurarse de que el disparo solo se mueva en el eje Y
        disparo.vspeed = 6; // Establece la velocidad en el eje Y para que caiga
        disparo.hspeed = 0; // Asegura que no tenga movimiento en el eje X

        // Cambiar el sprite del enemigo a la animación de ataque
        sprite_index = Attack__36x34_;
        DisparoRatio = 60; // Restablece el contador entre disparos
    }
}

