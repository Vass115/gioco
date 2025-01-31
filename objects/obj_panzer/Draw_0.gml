/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

// Dimensioni e posizione della barra
draw_self();

var bar_width = 20; // Lunghezza della barra
var bar_height = 1; // Altezza della barra
var hp_ratio = hp / max_hp;
var current_bar_width = bar_width * hp_ratio;

// Posizione della barra sotto il personaggio
var bar_x = x - bar_width / 2 + 3;
var bar_y = y + sprite_height / 2 - 5;

// Disegna il bordo nero attorno alla barra
var border_thickness = 1; // Spessore del bordo

draw_set_color(c_black); // Imposta il colore del bordo a nero
draw_rectangle(bar_x - border_thickness, bar_y - border_thickness, bar_x + bar_width + border_thickness, bar_y + bar_height + border_thickness, false);

// Cambia colore della barra in base alla vita rimanente
if (hp_ratio > 0.5) {
    draw_set_color(c_green); // Verde per vita sopra il 50%
} else if (hp_ratio > 0.2) {
    draw_set_color(c_yellow); // Giallo per vita tra il 20% e il 50%
} else {
    draw_set_color(c_red); // Rosso per vita sotto il 20%
}

// Disegna la parte della barra riempita (vita rimanente)
draw_rectangle(bar_x, bar_y, bar_x + current_bar_width, bar_y + bar_height, false);

// Disegna lo sfondo della barra (parte vuota) sopra il bordo nero
draw_set_color(c_black); // Puoi usare un colore diverso se lo sfondo della barra non deve essere nero
draw_rectangle(bar_x + current_bar_width, bar_y, bar_x + bar_width, bar_y + bar_height, false);
