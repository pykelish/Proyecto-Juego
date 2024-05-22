function srcDeleteOflinePlayers(){

	for(var i=0; i<instance_number(objNPC);i++){
	
		var npc = instance_find (objNPC, i);
		
		var isOnline= array_length(global.PLAYERS) > npc.serverId && global.PLAYERS[npc.serverId];
		
		if(!isOnline){
		
			with (npc){
			
				instance_destroy();
				
			}
		
		}
	
	}

}