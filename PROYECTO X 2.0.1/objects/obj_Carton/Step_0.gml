if (place_meeting(x, y, FabiPlayer) && !Recolectar_Carton) {
    FabiPlayer.Punto += 50;
    Recolectar_Carton = true;
}

if (Recolectar_Carton) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

