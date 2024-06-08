// Evento Mouse Left Pressed de objSelector

// Desmarcar todas las instancias y resetear su escala
with (objSelector) {
    _selected = false;
    image_xscale = 1;
    image_yscale = 1;
}

// Marcar la instancia actual como seleccionada y aumentar su escala
_selected = true;
image_xscale = 1.6;
image_yscale = 1.6;

// Actualizar las variables globales
global._id = _id;
global._name = _name;
global._highscore = _highscore;

