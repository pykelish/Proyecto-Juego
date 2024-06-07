if (place_meeting(x, y, FabiPlayer) && !Recolectar_Lata) {
    FabiPlayer.Punto += 250;
    Recolectar_Lata = true;
}

if (Recolectar_Lata) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

