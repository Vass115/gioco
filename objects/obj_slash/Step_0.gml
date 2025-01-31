/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
/*event_inherited()*/


var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top ,bbox_right, bbox_bottom, obj_enemy_parents, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		_list[| i].hp -= dmg
		if(	_list[| i].hp <= 0 ){
        instance_destroy(_list[| i]);}
    }
}
ds_list_destroy(_list);



x = global.player.x + addx
y = global.player.y
