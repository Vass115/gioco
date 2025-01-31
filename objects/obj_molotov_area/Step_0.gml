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
		_list[| i].hp -= global.player.Damage_molotovarea
		if(	_list[| i].hp <= 0 ){
        instance_destroy(_list[| i]);}
    }
}
ds_list_destroy(_list);

timer += (1 / room_speed); // Aggiunge 1 secondo al timer


if (timer >= 5) {
    instance_destroy()
	timer = 0
}


