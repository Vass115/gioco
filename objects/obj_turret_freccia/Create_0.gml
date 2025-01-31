/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
event_inherited()

dmg = global.player.Damage_turret

var target = instance_nearest(x, y, obj_enemy_parents);

if (instance_exists(target)) {
    // Calcola la direzione verso il nemico solo alla creazione
    direction = point_direction(x, y, target.x, target.y);
} else {
    // Se non esiste un nemico, direzione casuale
    direction = random(360);
}

// Imposta la velocità della freccia
speed = 8; // Velocità della freccia, modifica a piacere