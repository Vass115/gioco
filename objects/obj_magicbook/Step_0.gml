/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


// Calcola l'angolo tra il personaggio e il cursore del mouse
event_inherited()

// Inizializza i valori per il nemico più vicino
var nearest_enemy = noone;
var nearest_distance = -1;

// Cerca il nemico più vicino tra tutte le istanze del genitore
with (obj_enemy_parents) {
    var distance_to_bullet = point_distance(x, y, other.x, other.y);
    
    // Controlla se è il nemico più vicino
    if (nearest_enemy == noone || distance_to_bullet < nearest_distance) {
        nearest_enemy = id;
        nearest_distance = distance_to_bullet;
    }
}

// Se c'è un nemico più vicino, seguilo
if (nearest_enemy != noone) {
    var angle_to_enemy = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
    direction = angle_to_enemy;
    motion_set(direction, speed);
}


image_angle = direction;
