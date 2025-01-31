/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Incrementa il timer ogni passo


if (instance_exists(obj_upgrade)) { exit; }
if(instance_exists(obj_return_button)){ exit; }


x = global.player.x + 200
y = global.player.y + 200




timer += (1 / room_speed); // Aggiunge 1 secondo al timer

// Controlla se sono trascorsi 15 minuti (900 secondi)
if (timer = 420) {
    instance_create_depth(global.player.x - 500, global.player.y + 300, depth + 1, obj_panzer); // Sostituisci con il tuo boss
	x = global.player.x + 200
	y = global.player.y + 200



}

if (timer = 840) {
    instance_create_depth( global.player.x + 500, global.player.y + 300, depth + 1, obj_panzer); // Sostituisci con il tuo boss
	x = global.player.x - 200
	y = global.player.y + 200

}




if (timer = 900) {
    instance_create_depth(global.player.x + 500, global.player.y + 300, depth + 1, obj_queen); // Sostituisci con il tuo boss
	x = global.player.x + 200
	y = global.player.y + 200
}


