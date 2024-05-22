//La variable tipo nos definirá el tipo de acción que se realizará en la conexión
var type = ds_map_find_value(async_load,"type");


if(type == network_type_data){
	
	//Si el tipo es de un tipo red, es decir si es una conexión...
	//...obtendrá del buffer enviado anteriormente el nombre e id del jugador dentro del buffer
	var buffer= ds_map_find_value(async_load,"buffer");
	
	//Generamos una variable "bufferType" que obtiene el tipo de buffer que se pasará (register_user, client_input)
	var bufferType= buffer_read(buffer, buffer_string);
	
	
	var playerId= ds_map_find_value(async_load, "id");
	
	//Comparamos el tipo de buffer con el tipo "register_user"
	if(bufferType == "register_user"){
		
		//Si lo es, se obtendrán los datos necesarios para crear instancias de jugadores 
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
	//Si el cliente nos envía un buffer tipo "client_input" (script: srcSendInput())
	else if(bufferType== "client_input"){
		
		//Creamos una variable DIFERENTE para cada movimiento (Salto, disparo, dash...)
		//Y le asignamos el dato que nos arroje buffer_read 
		var movi= buffer_read(buffer, buffer_f16);
		
		//Recorremos el arreglo de jugadores para saber cual es el que nos envió el buffer
		for(var i=0; i<array_length(global.PLAYERS); i++){
		
			//Creamos una variable jugador para almacenar al cliente que se vaya leyendo
			var player = global.PLAYERS[i];
			if(player.id == playerId){
			
				//Creamos una instancia de ese jugador en el servidor
				var instance= player.instance;
			
				//A esa instancia le damos el movimiento que realizará el NPC en el servidor, jugador como cliente
				instance.input.movi=movi;
				break;
		
		}
		
	}
		
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
