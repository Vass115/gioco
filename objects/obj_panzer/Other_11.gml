/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

//sprite_index = spr_panzerAtk_blue_1;//

//la soluzione dovrebbe essere che cambio la posizione in base allo sprite che ce nel senso che l attaco parte in punti diversi
// Ciclo per creare 3 attacchi con direzione casuale
for (var i = 0; i < 6; i++) {
    // Crea l'istanza
    var atk = instance_create_layer(x, y, "Instances", obj_panzer_atk_E);

    if (instance_exists(atk)) {
        // Calcola l'angolo verso il giocatore
        var angle_to_player = point_direction(x, y, global.player.x, global.player.y);

        // Aggiungi una variazione casuale all'angolo
        atk.direction = angle_to_player + random_range(-10, 10); // Deviazione casuale di ±10 gradi

        // Imposta la velocità dell'attacco
        atk.speed = 8
    }
}





//sprite_index = spr_panzerAtk_blue_1;//