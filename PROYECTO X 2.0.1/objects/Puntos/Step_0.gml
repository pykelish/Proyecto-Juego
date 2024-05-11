if (place_meeting(x, y, FabiPlayer) && !Recolectar) {
    FabiPlayer.Punto += 10;
    Recolectar = true;
}

if (Recolectar) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

