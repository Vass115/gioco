// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Controlla se esistono già obj_upgrade o obj_return
if (instance_exists(obj_upgrade) || instance_exists(obj_return_button)) {
    exit;
}

// Se non esiste obj_sun, crea un'istanza
if (!instance_exists(obj_sun)) {
    var atk = instance_create_layer(global.player.x - 5, global.player.y, "attacchi", obj_sun);
}
