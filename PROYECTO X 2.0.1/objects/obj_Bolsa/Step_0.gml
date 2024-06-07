if (place_meeting(x, y, FabiPlayer) && !Recolectar_Bolsa) {
    FabiPlayer.Punto += 150;
    Recolectar_Bolsa = true;
}

if (Recolectar_Bolsa) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

