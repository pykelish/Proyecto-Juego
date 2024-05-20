// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function srcDoesPlayerExists(serverId){

	for(var i=0; i<instance_number(objNPC); i++){
		
		var npc= instance_find(objNPC,i);
		if(npc.serverId == serverId){
		
			return true;
		
		}
		
	}
	return false;

}