/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

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



//crea il proiettile 


x += hspeed;
y += vspeed;

