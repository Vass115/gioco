/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if (!audio_is_playing(CassaS)) {
    audio_play_sound(CassaS, 100, false); // Usa false per non ripetere
}

// Scegli un valore casuale tra 1 e 3
a = irandom(3);

var spawn_count; // numero di oggetti da spawnare
var min_distance = 100; // distanza minima dal centro dell'oggetto
var max_distance = 100; // distanza massima per variare la posizione

if (a <= 1) {
    spawn_count = 5;
    for (var i = 0; i < spawn_count; i++) {
        var angle = irandom_range(0, 360); // Angolo casuale per distribuire oggetti
        var distance = irandom_range(min_distance, max_distance); // Distanza tra 200 e 250

        var spawn_x = x + lengthdir_x(distance, angle);
        var spawn_y = y + lengthdir_y(distance, angle);

        instance_create_depth(spawn_x, spawn_y, depth + 1, obj_coin_pickup);
    }
}

else if (a = 2) {
    spawn_count = 2;
    for (var i = 0; i < spawn_count; i++) {
        var angle = irandom_range(0, 360);
        var distance = irandom_range(min_distance, max_distance);

        var spawn_x = x + lengthdir_x(distance, angle);
        var spawn_y = y + lengthdir_y(distance, angle);

        instance_create_depth(spawn_x, spawn_y, depth + 1, obj_hotdog_pickup);
    }
}

else if (a = 3) {
    var angle = irandom_range(0, 360);
    var distance = irandom_range(min_distance, max_distance);

    var spawn_x = x + lengthdir_x(distance, angle);
    var spawn_y = y + lengthdir_y(distance, angle);

    instance_create_depth(spawn_x, spawn_y, depth + 1, obj_exp_lv4);
}

// Distruggi l'oggetto corrente dopo aver creato i pickup
instance_destroy();