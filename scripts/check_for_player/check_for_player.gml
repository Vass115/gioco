// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function check_for_player() {
    // Calcola la direzione verso il giocatore
    var dir = point_direction(x, y, global.player.x, global.player.y);

    // Imposta la velocità orizzontale e verticale in base alla direzione e alla velocità desiderata
    hspeed = lengthdir_x(spd, dir);
    vspeed = lengthdir_y(spd, dir);

    // Muovi il nemico mantenendo la velocità costante
    x += hspeed;
    y += vspeed;
}

