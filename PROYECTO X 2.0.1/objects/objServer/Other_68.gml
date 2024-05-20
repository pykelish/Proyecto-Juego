var type = ds_map_find_value(async_load,"type");

if(type == network_type_data){
	
	var buffer= ds_map_find_value(async_load,"buffer");
	
	var playerName = buffer_read(buffer, buffer_string);
	
	var playerId= ds_map_find_value(async_load, "id");
	
	array_push(global.PLAYERS,{
		"id":playerId,
		"name": playerName
		});
	
	buffer_delete(buffer);
}else if(type == network_type_disconnect){

	var playerId = ds_map_find_value(async_load,"socket");
	
	for(var i=0; i<array_length(global.PLAYERS); i++){
		
		var player = global.PLAYERS[i];
		if(player.id == playerId){
		
			array_delete(global.PLAYERS, i, 1);
			break;
		
		}
		
	}

}
