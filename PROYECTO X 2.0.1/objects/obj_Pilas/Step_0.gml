if (place_meeting(x, y, FabiPlayer) && !Recolectar_Pila) {
    FabiPlayer.Punto += 300;
    Recolectar_Pila = true;
}

if (Recolectar_Pila) {
    image_index += 0.5;
    if (image_index >= image_number - 0.1){ 
        instance_destroy(); 
    }
}

