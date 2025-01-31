/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

// Dimensioni e posizione della barra XP
var xp_bar_width = 400;  // Larghezza fissa della barra XP
var xp_bar_height = 10;  // Altezza della barra XP
var xp_bar_padding = 20; // Padding orizzontale (distanza dai bordi dello schermo)
var xp_radius = 5;      // Raggio degli angoli arrotondati
var xp_x = xp_bar_padding; // Distanza dal bordo sinistro
var xp_y = 20;             // Posizione Y della barra XP (sopra la barra della vita)

// Calcolo della percentuale di XP
var xp_ratio = xp / xpNext; // Percentuale del progresso XP
var current_xp_bar_width = xp_bar_width * xp_ratio; // Larghezza attuale della barra XP

// Assicurati che la barra XP non superi i bordi dello schermo
if (xp_x + xp_bar_width > display_get_width() - xp_bar_padding) {
    xp_bar_width = display_get_width() - 2 * xp_bar_padding; // Riduci la larghezza se supera i bordi
}

// Disegna la barra XP
draw_set_color(c_blue);
draw_rectangle(xp_x, xp_y, xp_x + current_xp_bar_width, xp_y + xp_bar_height, false);

// Disegna l'effetto di lucentezza sulla barra XP
draw_set_color(c_white);
draw_set_alpha(0.5);
draw_rectangle(xp_x + 2, xp_y + 2, xp_x + current_xp_bar_width - 2, xp_y + xp_bar_height / 2, false);
draw_set_alpha(1);

// Disegna il bordo della barra XP
draw_set_color(c_black);
draw_rectangle(xp_x, xp_y, xp_x + xp_bar_width, xp_y + xp_bar_height, true);

// Disegna il testo della barra XP
draw_set_color(c_white);
draw_text(xp_x + xp_bar_width / 2 - string_width("XP") / 2, xp_y - 15, "XP");






// Dimensioni e posizione della barra della vita
var bar_width = 250; // Larghezza massima della barra della vita
var bar_height = 10; // Altezza della barra
var hp_ratio = hp / max_hp; // Percentuale della vita attuale
var current_bar_width = bar_width * hp_ratio; // Larghezza attuale della barra
var bar_x = xp_x; // Posizione X della barra della vita (uguale alla barra XP)
var bar_y = xp_y + xp_bar_height + 5; // Posizione Y della barra della vita (sotto la barra XP)

// Colore della barra della vita basato sulla vita rimanente
var hp_color;
if (hp_ratio > 0.5) {
    hp_color = c_green;
} else if (hp_ratio > 0.2) {
    hp_color = c_yellow;
} else {
    hp_color = c_red;
}

// Disegna la barra della vita
draw_set_color(hp_color);
draw_rectangle(bar_x, bar_y, bar_x + current_bar_width, bar_y + bar_height, false);

// Disegna l'effetto di lucentezza sulla barra della vita
draw_set_color(c_white);
draw_set_alpha(0.5);
draw_rectangle(bar_x + 2, bar_y + 2, bar_x + current_bar_width - 2, bar_y + bar_height / 2, false);
draw_set_alpha(1);

// Disegna il bordo della barra della vita
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);

// Disegna il testo della barra della vita
draw_set_color(c_white);
draw_text(bar_x + bar_width / 2 - string_width("HP") / 2, bar_y - 15, "HP");

// Disegna il testo della vita a destra della barra della vita
draw_set_color(c_white);
var text_x = bar_x + bar_width + 10; // 10 pixel di distanza a destra della barra
var text_y = bar_y + bar_height - 15; // Centra verticalmente rispetto alla barra
draw_text(text_x, text_y, string(hp) + " / " + string(max_hp));



// Disegna il livello attuale
draw_self(); // Disegna l'oggetto (opzionale, se vuoi mantenere la grafica dell'oggetto)

var level_text = "Livello: " + string(level); // Crea una stringa con il livello
draw_set_color(c_white); // Imposta il colore del testo (puoi cambiare il colore)
draw_text(600, 15, level_text); // Disegna il testo in alto a sinistra (puoi cambiare la posizione)