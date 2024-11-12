//La variable tipo nos definirá el tipo de acción que se realizará en la conexión
var type = ds_map_find_value(async_load,"type");


if(type == network_type_data){
	
	//Si el tipo es de un tipo red, es decir si es una conexión...
	//...obtendrá del buffer enviado anteriormente el nombre e id del jugador dentro del buffer
	var buffer= ds_map_find_value(async_load,"buffer");
	
}
//Generamos una variable "bufferType" que obtiene el tipo de buffer que se pasará (register_user, client_input)
// Servidor - async-red
var type = ds_map_find_value(async_load, "type");

if (type == network_type_data) {
	
    var buffer = ds_map_find_value(async_load, "buffer");
    var bufferType = buffer_read(buffer, buffer_string);
    var playerId = ds_map_find_value(async_load, "id");
    
    if (bufferType == "register_user") {
		
        var playerName = buffer_read(buffer, buffer_string);
        
        var npc = instance_create_layer(87, 210, "MonedasyObjetos", objNPC);
		
        var serverId = global.PLAYER_SERVER_ID++;
		
        
        npc.name = playerName;
        array_push(global.PLAYERS, {
            "id": playerId,
            "name": playerName,
            "serverId": serverId,
            "instance": npc,
        });
        
        srcAcceptUser(playerId, serverId);
        srcBroadcastUsers();
    }
    else  if (bufferType == "client_input") {
        var movi = buffer_read(buffer, buffer_f16);
        var correr = buffer_read(buffer, buffer_f16);
        var salto = buffer_read(buffer, buffer_f16);
        var dobleSalto = buffer_read(buffer, buffer_f16);
        var contadorSalto = buffer_read(buffer, buffer_f16);
        var escaleraUp = buffer_read(buffer, buffer_f16);
        var escaleraDown = buffer_read(buffer, buffer_f16);
        var gameOver = buffer_read(buffer, buffer_f16);
        
        for (var i = 0; i < array_length(global.PLAYERS); i++) {
            var player = global.PLAYERS[i];
            if (player.id == playerId) {
                var instance = player.instance;
                
                instance.input.movi = movi;
                instance.input.correr = correr;
                instance.input.salto = salto;
                instance.input.dobleSalto = dobleSalto;
                instance.input.contadorSalto = contadorSalto;
                instance.input.escaleraArriba = escaleraUp;
                instance.input.escaleraAbajo = escaleraDown;
                instance.input.gameOver = gameOver;
                
                break;
            }
        }
    }
		buffer_delete(buffer);
	}
else if (type == network_type_disconnect) {
    var playerId = ds_map_find_value(async_load, "socket");
    
    for (var i = 0; i < array_length(global.PLAYERS); i++) {
        var player = global.PLAYERS[i];
        if (player.id == playerId) {
            with (player.instance) {
                instance_destroy();
            }
            array_delete(global.PLAYERS, i, 1);
            break;
        }
    }
    srcBroadcastUsers();
}
