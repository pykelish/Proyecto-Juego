function asignarSprite(estado, selectedCharacter) {
    var spriteBase;
    
    // Selección del sprite base según el personaje
    switch (selectedCharacter) {
        case 1: spriteBase = "Pink_Monster"; break;
        case 2: spriteBase = "Owlet_Monster"; break;
        case 3: spriteBase = "Dude_Monster"; break;
        default: spriteBase = "Default_Monster";
    }

    // Construcción del nombre del sprite basado en el estado
    var spriteName;
    switch (estado) {
        case "cargando": spriteName = spriteBase + "_IdlewObject"; break;
        case "corriendo": spriteName = spriteBase + "_Run"; break;
        case "caminando": spriteName = spriteBase + "_Walk"; break;
        case "reposo": spriteName = spriteBase + "_Idle"; break;
        default: spriteName = spriteBase + "_Idle";
    }

    // Convertir el nombre en un índice de sprite
    var spriteIndex = asset_get_index(spriteName);
    if (spriteIndex != -1) {
        sprite_index = spriteIndex;
    } else {
        show_debug_message("Sprite no encontrado: " + spriteName);
        sprite_index = asset_get_index("Default_Monster_Idle"); // Asigna un sprite por defecto si no existe
    }
}
