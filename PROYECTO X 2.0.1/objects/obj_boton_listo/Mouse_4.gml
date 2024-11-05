/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_index = 2;
if obj_campotxt.cadena_usr != "" 
{
	global.nuevoregistro = obj_campotxt.cadena_usr;
	room_goto(Client_LoadOF);
}