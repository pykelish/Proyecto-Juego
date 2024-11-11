// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

// Función que asigna el sprite en función del estado y el personaje seleccionado
function asignarSprite(estado, selectedCharacter) {
	
    var spriteBase;
    // Asignar sprite base según el personaje seleccionado
    switch(selectedCharacter) {
        case 1:
            spriteBase = "Pink_Monster";
            break;
        case 2:
            spriteBase = "Owlet_Monster";
            break;
        case 3:
            spriteBase = "Dude_Monster";
            break;
        default:
            spriteBase = "Default_Monster"; // Valor por defecto
    }

    // Convertir las cadenas de estado a un identificador de sprite
    switch(estado) {
        case "cargando":
            sprite_index = spriteBase + "_IdlewObject"; // Asegúrate de que el sprite existe
            break;
        case "corriendo":
            sprite_index = spriteBase + "_Run";
            break;
        case "caminando":
            sprite_index = spriteBase + "_Walk";
            break;
        case "reposo":
            sprite_index = spriteBase + "_Idle";
            break;
        default:
            sprite_index = spriteBase + "_Idle"; // Valor por defecto
    }
}