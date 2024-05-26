var type= ds_map_find_value(async_load, "type");

if(type == network_type_data){

	var buffer= ds_map_find_value(async_load, "buffer");
	var bufferType= buffer_read(buffer, buffer_string);
	
	if(bufferType == "accept_user"){
		
		global.SERVER_ID= buffer_read(buffer, buffer_s8);
	
	}
	else if(bufferType == "update_users"){
		
		var playersAmount = buffer_read(buffer, buffer_s8);
		
		global.PLAYERS = [];
		for( var i=0; i<playersAmount; i++) {
			
			var playerName = buffer_read(buffer, buffer_string);
			var serverId = buffer_read (buffer, buffer_s8);
			
			if(serverId == global.SERVER_ID){
				
				continue;
				
			}
			var npc = srcDoesPlayerExists(serverId);
			if(npc == noone){
				
				var npc= instance_create_layer(128,384, "Instances_1",objNPC);
				npc.name = playerName;
				npc.serverId = serverId;
				
			}
			
			global.PLAYERS[serverId] = {
				
				"serverId": serverId,
				"name" : playerName,
				"instance": npc
				
			}
		
		}
		srcDeleteOflinePlayers();
		
		
	}
	else if ( bufferType == "update_world" ){
	
		var playersCount= buffer_read(buffer, buffer_s8);
		
		for (var i = 0; i<playersCount; i++){
		
			var serverId = buffer_read (buffer, buffer_s8);
			
			var playerx = buffer_read (buffer, buffer_f16);
			var playery = buffer_read (buffer, buffer_f16);
			
			var inputHor = buffer_read (buffer, buffer_f16);
			var inputCorrer = buffer_read (buffer, buffer_f16);
			var inputSalto = buffer_read (buffer, buffer_f16);
			
			if(serverId == global.SERVER_ID){
				
				continue;
				
			}
			
			var player = global.PLAYERS[serverId];
			var instance = player.instance;
			
			instance.x = playerx;
			instance.y = playery;
			instance.input.movi = inputHor;
			instance.input.correr = inputCorrer;
			instance.input.salto = inputSalto;
			
			
		
		}
	
	}
	
	
	buffer_delete(buffer);
	

}
