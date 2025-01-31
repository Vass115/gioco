/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }

// Evento Step o altro evento che gestisce la creazione degli oggetti
if (global.current_fire_objects < global.max_fire_objects) {
    // Codice per creare l'oggetto obj_fire
    var fuoco = instance_create_layer(global.player.x , global.player.y, "Instances", obj_fire);
    global.current_fire_objects += 1; // Incrementa il contatore degli oggetti
	fuoco.image_xscale = image_xscale;
	if(image_xscale == 1 ){ fuoco.addx = 35; }
	if(image_xscale == -1 ){ fuoco.addx = -35; }
}

