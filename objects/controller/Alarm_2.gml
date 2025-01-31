/// @Prendi l exp
//Puoi scrivere il tuo codice in questo editor
if(room == Room2){

var _list = ds_list_create();
var _num = collision_circle_list(global.player.x, global.player.y, global.player.collectRadius, obj_exp_lv1, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);

var _list = ds_list_create();
var _num = collision_circle_list(global.player.x, global.player.y, global.player.collectRadius, obj_exp_lv2, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);

var _list = ds_list_create();
var _num = collision_circle_list(global.player.x, global.player.y, global.player.collectRadius, obj_exp_lv3, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);

var _list = ds_list_create();
var _num = collision_circle_list(global.player.x, global.player.y, global.player.collectRadius, obj_exp_lv4, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);

var _list = ds_list_create();
var _num = collision_circle_list(global.player.x, global.player.y, global.player.collectRadius, obj_exp_lv5, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);




alarm[2] = alarmTime2

}