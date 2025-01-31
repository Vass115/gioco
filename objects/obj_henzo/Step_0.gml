/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ image_speed = 0; hspeed = 0; vspeed = 0; exit; }




// Controlla se il tasto ESC è stato premuto
if (keyboard_check_pressed(vk_escape)) {
    // Se l'oggetto di pausa non esiste, lo crea
    if (!instance_exists(obj_return_button)) {
        instance_create_layer(global.player.x, global.player.y - 50, "Instances_Menu", obj_return_button);
    }
    // Se l'oggetto di pausa esiste, lo distrugge
    else {
        with (obj_return_button) {
            instance_destroy();
        }
    }
}





if(instance_exists(obj_return_button)){ image_speed = 0; hspeed = 0; vspeed = 0; exit; }

image_speed = 1;



hspeed = 0
vspeed = 0















// vai a destra 

if (keyboard_check(ord("D"))){
hspeed += spd	
}  



// vai a sinistra

if(keyboard_check(ord("A"))) {
	hspeed -= spd
	}


// vai su

if (keyboard_check(ord("W"))) {
vspeed -= spd
}



// vai giu

 if(keyboard_check(ord("S"))) {
	vspeed += spd
	}




// Controlla la posizione orizzontale del cursore rispetto al personaggio
if (mouse_x > x) {
    // Cursore a destra del personaggio
    image_xscale = 1; // Orienta verso destra
} else {
    // Cursore a sinistra del personaggio
    image_xscale = -1; // Riflette l'immagine a sinistra
}

// Assicurati che l'immagine non sia riflessa verticalmente
image_yscale = 1;






//cambia lo sprite mentre ti muovi

if (vspeed == 0) && (hspeed == 0) {
	if (sprite_index == spr_PGhenzo_run){
		sprite_index = spr_PGhenzo_idle
	}
	
} else {
	if (sprite_index == spr_PGhenzo_idle){
		sprite_index = spr_PGhenzo_run
	}
}


if (invulnerable) {
    invulnerable_timer -= 1; // Riduce il timer di invulnerabilità
    if (invulnerable_timer <= 0) {
        invulnerable = false; // Rimuove l'invulnerabilità
    }
}


x += hspeed;
y += vspeed;


