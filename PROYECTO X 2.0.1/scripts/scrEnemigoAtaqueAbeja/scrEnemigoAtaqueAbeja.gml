function scrEnemigoAtaqueAbeja(){
    DisparoRatio -= 1;
    
    if (DisparoRatio <= 0) {
        var disparo = instance_create_layer(x + 23 * image_xscale, y - 14, "MonedasyObjetos", disparo_Enemigo_Abeja); 
        disparo.image_xscale = image_xscale;
        
        // Establece la velocidad vertical para que se mueva en el eje Y
        disparo.vspeed = 5; // Ajusta el valor según la dirección y velocidad deseadas
        
        sprite_index = Attack__36x34_;
        DisparoRatio = 75;
    }
}
