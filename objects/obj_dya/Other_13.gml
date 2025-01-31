/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }

var roccia = instance_create_depth(x,y,depth +1,obj_rock)
	roccia.direction = point_direction(x,y,mouse_x,mouse_y) + random_range(-10,10);
	roccia.image_angle = roccia.direction
	roccia.speed = 5;
	