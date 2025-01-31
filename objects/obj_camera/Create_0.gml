/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Create Event di obj_camera
// Abilita le viste nel gioco

if (instance_exists(global.player)) {
    camera_set_view_target(view_camera[0], global.player);
}