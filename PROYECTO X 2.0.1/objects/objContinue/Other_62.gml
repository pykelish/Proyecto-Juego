/// Evento Async HTTP
if (async_load[? "id"] == global.login_request) {
    var response = async_load[? "result"];

    if (response !="Invalid name or password" && response !="Invalid user or password" ) {
        // Autenticación exitosa, el jugador puede ingresar al juego
        room_goto(Room_Test_EMA);
    } else {
        // Autenticación fallida, muestra un mensaje de error
        show_message("Error de autenticación: " + response);
    }
}
