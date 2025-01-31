/// @Prendi l exp
//Puoi scrivere il tuo codice in questo editor

if(room == Room2){
	
	
var _list = ds_list_create();
var _num = collision_circle_list(global.player.x, global.player.y, global.player.collectRadius, obj_coin_pickup, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);




alarm[3] = alarmTime3

}