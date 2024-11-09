/// Evento Async HTTP
if (async_load[? "id"] == global.login_request) {
    var response = async_load[? "result"];

    if (response !="Invalid name or password" && response !="Invalid user or password" ) {
        // Autenticación exitosa, el jugador puede ingresar al juego
		objContinue.persistent=false;
        //room_goto(Bosque_Room);
		room_goto(RoomSC);
    } else {
        // Autenticación fallida, muestra un mensaje de error
        show_message("Error de autenticación: " + response);
    }
}
