/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var ancho = string_width(textobtn);
var alto = string_height(textobtn);
var status;
// Detecta si el mouse está sobre el texto (ajustado al centro del objeto)
if (mouse_x > x - ancho / 2 && mouse_x < x + ancho / 2 && mouse_y > y - alto / 2 && mouse_y < y + alto / 2) {
    color_texto = make_color_rgb(39, 174, 96);  // Color cuando el mouse está sobre el texto
    
		// Si se hace clic, cambia el color
		if (mouse_check_button_pressed(mb_left)) {

			if (obj_campotxtuser_1.cadena_usr == "" && obj_campotxtpass_1.cadena_psw == "") {
			    status = 3; // Ambos vacíos
			} else if (obj_campotxtuser_1.cadena_usr == "" && obj_campotxtpass_1.cadena_psw != "") {
			    status = 1; // Usuario vacío, contraseña llena
			} else if (obj_campotxtuser_1.cadena_usr != "" &&  obj_campotxtpass_1.cadena_psw == "") {
			    status = 2; // Usuario lleno, contraseña vacía
			} else {
			    status = 0; // Ambos llenos, listo para cambiar de room
			}

			switch (status) {
			    case 1:
			        show_message("Por favor ingresa un usuario");
			        break;

			    case 2:
			        show_message("Por favor ingresa la contraseña");
			        break;

			    case 3:
			        show_message("Por favor ingresa usuario y contraseña");
			        break;

			    default:
					color_texto = c_red;  // Cambia el color a rojo cuando se hace clic
					room_goto(Client_Menu2OF);
			        break;
			}


			/*
			if (obj_campotxtuser_1.cadena_usr != "" && obj_campotxtpass_1.cadena_psw != "") {
				// Cambia de room si ambos campos tienen texto
				color_texto = c_red;  // Cambia el color a rojo cuando se hace clic
				room_goto(Client_Menu2OF);
			} else {
				  // Mostrar un mensaje de error o advertencia si falta información
				 show_message("Por favor, ingresa usuario y contraseña.");
			}*/

    }
} else {
    color_texto = c_white; // Color predeterminado cuando el mouse no está sobre el texto
}
