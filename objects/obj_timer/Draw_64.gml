/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Imposta il colore del testo
// Imposta il colore del testo a bianco
// Imposta il colore del testo a bianco

// Disegna il timer al centro dello schermo

// Imposta il colore del testo a bianco
draw_set_color(c_white); // Imposta il colore del testo a bianco

// Calcola il tempo trascorso
var minutes = floor(timer / 60);
var seconds = timer mod 60;

// Formatta i secondi per mostrare sempre due cifre
var display_seconds = string_format(seconds, 2, 0); // Fornisce zero-padding
var display_minutes = string_format(minutes, 2, 0); // Fornisce zero-padding

// Calcola la posizione x per centrare il testo
var text = "Tempo di gioco: " + display_minutes + ":" + display_seconds;
var text_width = string_width(text); // Ottieni la larghezza del testo
var text_x = (display_get_width() - text_width) / 2; // Calcola la posizione x per centrare il testo

// Disegna il testo al centro in alto
draw_text(text_x, 10, text); // La posizione y è 10 pixel dall'alto

