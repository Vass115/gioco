/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
/*counter++;

if (counter >= spawn_time) {
    counter = 0;

    // Riduci il tempo di spawn, ma non andare sotto i 30
    if (spawn_time > 30) {
        spawn_time -= 3;
    }
	

    var new_x, new_y;

    // Genera coordinate finché la distanza dal giocatore non è sufficientemente grande
    new_x = global.player.x + choose(irandom_range(-600, -400), irandom_range(400, 600));
    new_y = global.player.y + choose(irandom_range(-600, -400), irandom_range(400, 600));
    
    // Ciclo while per assicurarsi che le coordinate siano fuori dalla distanza minima
    while (point_distance(global.player.x, global.player.y, new_x, new_y) < 400) {
        new_x = global.player.x + choose(irandom_range(-600, -400), irandom_range(400, 600));
        new_y = global.player.y + choose(irandom_range(-600, -400), irandom_range(400, 600));
    }



// Genera un valore casuale tra 0 e 9
var new_a = irandom(9);

// Decidi quale tipo di nemico creare in base al valore di new_a
if (new_a < 3) {
    // Crea obj_slime per i valori da 0 a 2
    instance_create_depth(new_x, new_y, global.player.depth + 1, obj_slime);
} else if (new_a < 6) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(new_x, new_y, global.player.depth + 1, obj_bat);
} else {
    // Crea obj_ghost per i valori da 6 a 9
    instance_create_depth(new_x, new_y, global.player.depth + 1, obj_ghost);
}

}*/