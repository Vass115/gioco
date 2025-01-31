/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


if (room != Room2) {
    // Se non siamo in Room2, avvia la musica solo se non è in riproduzione
    if (!audio_is_playing(snd_musica_home)) {
        audio_play_sound(snd_musica_home, 100, true); // Avvia la musica in loop
		if (audio_is_playing(snd_musica_world1)) {
        audio_stop_sound(snd_musica_world1); 
    }
    }
} else {
    // Se siamo in Room2, ferma la musica solo se sta suonando
    if (audio_is_playing(snd_musica_home)) {
        audio_stop_sound(snd_musica_home); // Ferma la musica
    }
	 if (!audio_is_playing(snd_musica_world1)) {
        audio_play_sound(snd_musica_world1, 100, true); // Avvia la musica in loop
    }
}