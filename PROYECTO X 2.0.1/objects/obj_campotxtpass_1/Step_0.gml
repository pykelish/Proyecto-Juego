/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if puede_escribir == true
{
	image_index = 1; // cambiar al sprite de que puede escribir
	if string_width(cadena_psw) < TX - 32 or keyboard_check(vk_backspace)
	{
		cadena_psw = keyboard_string;
	}
	else
	{
		keyboard_string = cadena_psw;
	}
}
else 
{
	image_index = 0;
}



// Escribir al hacer click en el input

if mouse_check_button(mb_left)
{
	if (mouse_x >= x && mouse_x <= x + TX) && (mouse_y >= y && mouse_y <= y + TY)
	{
		keyboard_string = cadena_psw;
		puede_escribir = true;
	}
	else
	{
		puede_escribir = false;
	}
}

if keyboard_check(vk_enter)
{
	puede_escribir = false;
}