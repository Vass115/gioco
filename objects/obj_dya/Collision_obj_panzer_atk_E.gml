/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if (!invulnerable) {
    hp -= 15; // Riduce la vita del personaggio di 1

    if (hp <= 0) {
		  hp = 0; 
		// Salva le monete in un file
ini_open("savefile.ini"); // Apri o crea il file di salvataggio
ini_write_real("GameData", "Coins", global.coins); // Scrivi le monete nel file
ini_close(); // Chiudi il file
        // Gestisci la morte del personaggio
        room_goto(Room5)
    } else {
        invulnerable = true; // Rendi il personaggio invulnerabile
        invulnerable_timer = 10; // Imposta il periodo di invulnerabilità a 60 frame (circa 1 secondo)
    }
}