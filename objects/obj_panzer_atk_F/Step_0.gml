/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Segui il boss e muoviti in avanti
if(instance_exists(obj_upgrade)){ image_speed = 0; hspeed = 0; vspeed = 0; exit; }

if(instance_exists(obj_return_button)){ image_speed = 0; hspeed = 0; vspeed = 0; exit; }

image_speed = 1;


lifetime +=1;

if (instance_exists(obj_panzer)) {
    // Posiziona l'attacco davanti al boss
    var offset_x = 160; // Offset orizzontale
	image_xscale = 1
	
    if (obj_panzer.image_xscale < 0) {
		image_xscale =-1
        offset_x = -186; // Inverti se il boss è flippato
    }

    // Calcola la posizione iniziale
    x = obj_panzer.x + lengthdir_x(offset_x, obj_panzer.image_angle) + 15;
    y = obj_panzer.y + 25;

    // Memorizza la direzione iniziale del boss
    angle = obj_panzer.image_angle; 
} else {
    instance_destroy(); // Distruggi se il boss non esiste
}

//Distruzione automatica//
if (distance_to_object(obj_panzer) > 300 || lifetime > 150) {
    instance_destroy();
}

