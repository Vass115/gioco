/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Segui il boss e muoviti in avanti

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



/*
var boss = instance_find(obj_panzer, 0); // Trova il boss
if (boss != noone) {
    x = boss.x + lengthdir_x(32, boss.image_angle) + 15; // Posizionati davanti al boss
    y = boss.y + lengthdir_y(32, boss.image_angle)  + 25; 
}*/
