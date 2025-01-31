/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

/*
// Controlla se il tasto ESC è stato premuto
if (keyboard_check_pressed(vk_escape)) {
    // Se l'oggetto di pausa non esiste, lo crea
    if (!instance_exists(obj_return_button)) {
        instance_create_layer(global.player.x, global.player.y - 50, "Instances_Menu", obj_return_button);
    }
    // Se l'oggetto di pausa esiste, lo distrugge
    else {
        with (obj_return_button) {
            instance_destroy();
        }
    }
}

*/

// Controlla se il tasto ESC è stato premuto
if (keyboard_check_pressed(vk_escape)) {
    // Se l'oggetto di pausa non esiste, crea il bottone di pausa
    if (!instance_exists(obj_return_button)) {
        instance_create_layer(global.player.x, global.player.y - 50, "Instances_Menu", obj_return_button);
    }
    // Se l'oggetto di pausa esiste, lo distrugge insieme al bottone di unpause
    else {
        with (obj_return_button) {
            instance_destroy();
        }
       
    }
}


