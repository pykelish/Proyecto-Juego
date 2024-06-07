// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (ds_map_find_value(async_load, "id") == get) {
    if (ds_map_find_value(async_load, "status") == 0) {
        var result = ds_map_find_value(async_load, "result");
        var resultMap = json_decode(result);
        var list;

        // Verificar si "default" existe y es una lista
        if (ds_map_exists(resultMap, "default")) {
            list = ds_map_find_value(resultMap, "default");
            // Si el valor no es una lista, conviértelo en una lista
            if (!ds_exists(list, ds_type_list)) {
                var temp_list = ds_list_create();
                ds_list_add(temp_list, list);
                list = temp_list;
            }
        } else {
            // Si "default" no existe, crea una lista y agrega los valores de resultMap
            list = ds_list_create();
            // Recorrer manualmente resultMap y agregar sus valores a la lista
            var map_size = ds_map_size(resultMap);
            if (map_size > 0) {
                var map_index = ds_map_find_first(resultMap);
                while (map_index != undefined) {
                    ds_list_add(list, ds_map_find_value(resultMap, map_index));
                    map_index = ds_map_find_next(resultMap, map_index);
                }
            }
        }
		
		enabled = ds_list_size(list)>0;

        ds_list_destroy(list);
        ds_map_destroy(resultMap);
        global.ERROR = "";
    } else {
        global.ERROR = "COULD NOT FETCH DATA";
    }
    global.LOADING = false;
}
