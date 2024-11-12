if (ds_map_find_value(async_load, "id") == get) {
	
    if (ds_map_find_value(async_load, "status") == 0) {
	
        var result = ds_map_find_value(async_load, "result");
        var resultMap = json_decode(result);
		var list = ds_map_find_value(resultMap, "players");

		var xx = 392;
		var yy = 285;
		

		for (var i=0; i< ds_list_size(list); i++){
		
			if (i % 4 == 0 && i > 0) 
			{
				xx = 392; // Reiniciar la posición X para la nueva fila
				yy += 200; // Aumentar la posición Y para la nueva fila
			}
			var map = ds_list_find_value(list,i);
			
			
			with(instance_create_layer(xx,yy,"Instances",objSelector)){
			
				_id = ds_map_find_value(map, "id");
				_name = ds_map_find_value(map, "name");
				_highscore = ds_map_find_value(map, "highscore");
				_time_played = ds_map_find_value(map, "time_played");
			
				_selected = i == 0;
				
				if(_selected){
				
					global._id = ds_map_find_value(map, "id");
					global._name = ds_map_find_value(map, "name");
					global._highscore = ds_map_find_value(map, "highscore");
					global._time_played = ds_map_find_value(map, "time_played");
				
				}
			}
			
			xx+=175;
			ds_map_destroy(map);
		
		}
		ds_list_destroy(list);
		ds_map_destroy(resultMap);
 
 
    } else {
		
        global.ERROR = "COULD NOT FETCH DATA";
		
    }
    global.LOADING = false;
}