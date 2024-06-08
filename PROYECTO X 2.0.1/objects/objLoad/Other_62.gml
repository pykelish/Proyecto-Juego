if (ds_map_find_value(async_load, "id") == get) {
	
    if (ds_map_find_value(async_load, "status") == 0) {
		
       var result = ds_map_find_value(async_load, "result");
       var resultMap = json_decode(result);
	   var list = ds_map_find_value(resultMap, "players");
	   
	   enabled = ds_list_size(list) > 0;
		
	   ds_list_destroy(list);
	   ds_map_destroy(resultMap);
    }
}else {
	
        global.ERROR = "COULD NOT FETCH DATA";
		
}
global.LOADING = false;
