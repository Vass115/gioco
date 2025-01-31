/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


// Calcola l'angolo tra il personaggio e il cursore del mouse
// Calcola l'angolo tra il personaggio e il cursore del mouse
if (instance_exists(obj_upgrade) || instance_exists(obj_return_button)) {
    if (!is_paused) { // Se non è già in pausa
        speed_original = speed; // Salva la velocità corrente
        speed = 0;              // Ferma l'oggetto
        image_speed = 0;        // Ferma l'animazione
        is_paused = true;       // Imposta lo stato di pausa
    }
} 
else {
    // Ripristina la velocità quando la pausa termina
    if (is_paused) {
        speed = speed_original; // Ripristina la velocità originale
        image_speed = 1;        // Ripristina l'animazione (se serve)
        is_paused = false;      // Esci dallo stato di pausa
    }
}

// ---- Collisioni ----
// Controlla se il gioco è in pausa
if (!is_paused) {
    var _list = ds_list_create();
    var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parents, false, true, _list, false);

    if (_num > 0) {
        for (var i = 0; i < _num; ++i) {
            _list[| i].hp -= global.player.Damage_sun; // Infliggi danno
           
            if (_list[| i].hp <= 0) {
                instance_destroy(_list[| i]); // Distruggi il nemico
            }
        }
    }

    // Libera la memoria
    ds_list_destroy(_list);
}

// Aggiorna la posizione
x = global.player.x -5;
y = global.player.y ;
