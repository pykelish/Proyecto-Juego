if (place_meeting(x, y, FabiPlayer) && !Recolectar_Pato) {
    FabiPlayer.Punto += 350;
    Recolectar_Pato = true;
}

if (Recolectar_Pato) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

