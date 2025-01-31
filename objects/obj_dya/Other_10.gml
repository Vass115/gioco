/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }

var slash = instance_create_depth(x,y,depth +1,obj_slash)
	slash.image_xscale = image_xscale;
	if(image_xscale == 1 ){ slash.addx = 35; }
	if(image_xscale == -1 ){ slash.addx = -35; }
	
	
 


