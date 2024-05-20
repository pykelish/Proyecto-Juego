//La variable tipo nos definirá el tipo de acción que se realizará en la conexión
var type = ds_map_find_value(async_load,"type");


if(type == network_type_data){
	
	//Si el tipo es de un tipo red, es decir si es una conexión
	//Obtendrá del buffer enviado anteriormente el nombre e id del jugador dentro del buffer
	var buffer= ds_map_find_value(async_load,"buffer");
	var bufferType= buffer_read(buffer, buffer_string);
	
	
	var playerId= ds_map_find_value(async_load, "id");
	
	if(bufferType== "register_user"){
		
		var playerName = buffer_read(buffer, buffer_string);
	
		var npc= instance_create_layer(128,700,"Instances", objNPC);
	
		var serverId= global.PLAYER_SERVER_ID++;
		
		npc.name = playerName;
		//Una vez obtenidos y almacenados esos datos, hacemos un push de OBJETO en nuestra lista de jugadores
		array_push(global.PLAYERS,{
			"id":playerId,
			"name": playerName,
			"serverId": serverId,
			"instance": npc,
			});
	

		srcAcceptUser(playerId,serverId);
		srcBroadcastUsers();
	}
	//Limpiamos la memoria dinámica una vez el objeto fue creado, debido a que el buffer sigue sirviendo para...
	//... continuar enviando y recibiendo jugadores
	buffer_delete(buffer);
}

//Si el tipo de dato de la conexión es disconnect, se hace lo contrario, se busca el jugador dentro de lista...
//... y se elimina utilizando el id

else if(type == network_type_disconnect){

	var playerId = ds_map_find_value(async_load,"socket");
	
	for(var i=0; i<array_length(global.PLAYERS); i++){
		
		var player = global.PLAYERS[i];
		if(player.id == playerId){
		
			with(player.instance){
				
				instance_destroy();
			}
			array_delete(global.PLAYERS, i, 1);
			
			break;
		
		}
		
	}
	srcBroadcastUsers();

}
