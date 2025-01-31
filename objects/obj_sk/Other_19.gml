/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }

var durendal = instance_create_layer(x,y,"attacchi",obj_durendal)
	durendal.direction = irandom_range(0,360)
	durendal.image_angle = durendal.direction
	durendal.speed = 7;