/// @description Convertir ds_map a cadena
/// @param map El ds_map a convertir
function ds_map_to_string(map) {
    var str = "{";
    var is_first = true;
    
    var key = ds_map_find_first(map);
    
    while (key != undefined) {
        if (!is_first) {
            str += ", ";
        } else {
            is_first = false;
        }
        
        var value = ds_map_find_value(map, key);
        if (is_string(value)) {
            str += string(key) + ": \"" + string(value) + "\"";
        } else {
            str += string(key) + ": " + string(value);
        }
        
        key = ds_map_find_next(map, key);
    }
    
    str += "}";
    return str;
}
