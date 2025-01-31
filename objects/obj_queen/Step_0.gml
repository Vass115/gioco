/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
if(instance_exists(obj_upgrade)){ image_speed = 0; hspeed = 0; vspeed = 0; exit; }

if(instance_exists(obj_return_button)){ image_speed = 0; hspeed = 0; vspeed = 0; exit; }




event_inherited()



// Decrementa il timer
if (timer > 0) {
    timer -= 1;
} else {
    // Esegui il codice quando il timer raggiunge 0
    var a = irandom(2);

    if (a <= 1) {
        event_user(1);
    } else {
        event_user(0);
    }

    // Resetta il timer
    timer = 300; // Imposta nuovamente a 60 frame per un nuovo ciclo
}



