/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
  

// Cambia direzione casualmente ogni 60 frame (1 secondo a room_speed = 60)
if (irandom(59) == 0) {
    direction = irandom(360);
}

 speed = spd;
 
 image_speed = 1;
 
  if (global.player.x > x) { 
            image_xscale = 1; 
        } else {
            image_xscale = -1;
        }

        if (instance_exists(obj_upgrade) || instance_exists(obj_return_button)) {
            speed = 0;
            image_speed = 0;
        }
  



