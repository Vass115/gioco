/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if (!audio_is_playing(CassaS)) {
    audio_play_sound(CassaS, 100, false); // Usa false per non ripetere
}



var min_distance = 100; // distanza minima dal centro dell'oggetto
var max_distance = 100; // distanza massima per variare la posizione

// Generazione del pickup in base al valore di 'b'
b = irandom(9);

var angle = irandom_range(0, 360);
var distance = irandom_range(min_distance, max_distance);
var spawn_x = x + lengthdir_x(distance, angle);
var spawn_y = y + lengthdir_y(distance, angle);

if (b <= 1) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_fire_pickup);
}

else if (b = 2) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_rock_pickup);
}

else if (b = 3) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_fulmine_pickup);
}
else if (b = 4) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_ice_pickup);
}

else if (b = 5) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_magicbook_pickup);
}

else if (b = 6) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_molotov_pickup);
}

else if (b = 7) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_sole_pickup);
}


else if (b = 8) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_turrer_pickup);
}

else if (b = 9) {
    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_durendal_pickup);
}



// Distruggi l'oggetto corrente dopo aver creato i pickup
instance_destroy();
