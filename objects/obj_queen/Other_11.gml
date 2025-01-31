/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

	sprite_index = spr_queenAtk_sickle;
	
//la soluzione dovrebbe essere che cambio la posizione in base allo sprite che ce nel senso che l attaco parte in punti diversi
// Ciclo per creare 3 attacchi con direzione casuale

    var atk = instance_create_layer(x, y, "Instances", obj_queen_atk_S);

    if (instance_exists(atk)) {
        // Calcola l'angolo verso il giocatore
        var angle_to_player = point_direction(x, y, global.player.x, global.player.y);

        // Imposta la velocità dell'attacco
        atk.speed = 7
	
    }






//sprite_index = spr_panzerAtk_blue_1;//