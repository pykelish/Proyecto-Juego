if (place_meeting(x, y, FabiPlayer) && !Recolectar_Moneda) {
    FabiPlayer.Punto += 10;
    Recolectar_Moneda = true;
}

if (Recolectar_Moneda) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

