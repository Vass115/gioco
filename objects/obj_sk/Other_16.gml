/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }


    // Crea l'istanza
    var atk = instance_create_depth(x, y,depth +1, obj_magicbook);

   
        // Imposta la velocità dell'attacco
        atk.speed = 3
   
