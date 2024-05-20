// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function srcDeleteOflinePlayers(){

	for(var i=0; i<instance_number(objNPC);i++){
	
		var npc = instance_find (objNPC, i);
		
		var isOnline= false;
		
		for (var j=0; j<array_length(global.PLAYERS); j++){
			
			if(global.PLAYERS[j].serverId == npc.serverId) {
			
				isOnline=true;
				break;
			
			}
			
		}
		if(!isOnline){
		
			with (npc){
			
				instance_destroy();
				
			}
		
		}
	
	}

}