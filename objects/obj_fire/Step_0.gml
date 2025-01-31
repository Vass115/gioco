/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

// Inherit the parent event

/*event_inherited()*/




if(instance_exists(obj_upgrade)){ exit; }
	if(instance_exists(obj_return_button)){ exit; }

var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top ,bbox_right, bbox_bottom, obj_enemy_parents, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		_list[| i].hp -= global.player.Damage_Fuoco
		if(	_list[| i].hp <= 0 ){
        instance_destroy(_list[| i]);}
    }
}
ds_list_destroy(_list);



// Costante di velocità di rotazione
var rotation_speed = 2; // Gradi per passo

// Incrementa l'angolo
angle += rotation_speed;
if (angle >= 360) {
    angle -= 360; // Mantieni l'angolo tra 0 e 359 gradi
}

// Calcola la posizione dell'oggetto orbitante
x = global.player.x + radius * cos(degtorad(angle));
y = global.player.y + radius * sin(degtorad(angle));


