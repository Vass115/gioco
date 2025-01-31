/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
event_inherited()

// Calcola la distanza dal giocatore
var dist_to_player = point_distance(x, y, global.player.x, global.player.y);

// Controlla se il nemico è abbastanza vicino
if (dist_to_player <= 50) { // Cambia 50 con la distanza desiderata
    instance_create_layer(x, y, "Instances", obj_explosion); // Crea l'oggetto esplosione
    instance_destroy(); // Distruggi il nemico
}

