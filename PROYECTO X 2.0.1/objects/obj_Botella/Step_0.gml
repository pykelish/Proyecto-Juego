if (place_meeting(x, y, FabiPlayer) && !Recolectar_Botella) {
    FabiPlayer.Punto += 100;
    Recolectar_Botella = true;
}

if (Recolectar_Botella) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

