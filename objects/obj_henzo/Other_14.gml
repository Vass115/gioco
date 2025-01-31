/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }

var molotov = instance_create_depth(x,y,depth +1,obj_molotov)
	molotov.direction = point_direction(x,y,mouse_x,mouse_y) + random_range(-45,135);
	molotov.image_angle = molotov.direction
	molotov.speed = 3;
	// Aggiungi una rotazione continua all'immagine
