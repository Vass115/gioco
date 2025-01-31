/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }


for (var i = 0; i < 3; i++) {
    // Crea l'istanza
    var atk = instance_create_depth(x, y,depth +1, obj_ice);

    if (instance_exists(atk)) {
       
        // Aggiungi una variazione casuale all'angolo
       /* atk.direction =  random_range(-10, 10); // Deviazione casuale di ±10 gradi*/

        // Imposta la velocità dell'attacco
        atk.speed = 5
    }
}