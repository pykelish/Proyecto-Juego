var type= ds_map_find_value(async_load, "type");

if(type == network_type_data){

	var buffer= ds_map_find_value(async_load, "buffer");
	var bufferType= buffer_read(buffer, buffer_string);
	
	if(bufferType == "accept_user"){
		
		global.SERVER_ID= buffer_read(buffer, buffer_s8);
	
	}
	if(bufferType == "update_users"){
		
		var playersAmount = buffer_read(buffer, buffer_s8);
		
		global.PLAYERS = [];
		for( var i=0; i<playersAmount; i++) {
			
			var playerName = buffer_read(buffer, buffer_string);
			var serverId = buffer_read (buffer, buffer_s8);
			
			if(serverId == global.SERVER_ID){
				
				continue;
				
			}
			
			if(!srcDoesPlayerExists(serverId)){
				
				var npc= instance_create_layer(128,384, "Instances",objNPC);
				npc.name = playerName;
				npc.serverId = serverId;
				
			}
			
			array_push(global.PLAYERS, {
				"serverId": serverId,
				"name" : playerName,
			
			});
		
		}
		srcDeleteOflinePlayers();
		
		
	}
	
	
	buffer_delete(buffer);
	

}
