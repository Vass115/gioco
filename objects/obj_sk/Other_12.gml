/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }

var fulmine = instance_create_depth(x,y,depth +1,obj_fulmine)
	fulmine.direction = irandom_range(0,360)
	fulmine.image_angle = fulmine.direction
	fulmine.speed = 10;
	