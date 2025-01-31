/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

/*
with(obj_enemy_parents){
	
	
	
	image_speed = 1;
	
	
	direction = point_direction(x, y, global.player.x, global.player.y);
	
	speed = spd
  
	if(global.player.x > x) { image_xscale = 1 }
	else {image_xscale = -1 ;}
  
  
	if(instance_exists(obj_upgrade)){
	speed = 0;
	image_speed = 0;
	}
	
	if(instance_exists(obj_return)){
	speed = 0;
	image_speed = 0;
	}
	
}


global.player.depth = -global.player.y


alarm [0] = alarmTime;
*/


with(obj_enemy_parents) {
    if (follow_player) { // Solo i nemici con follow_player = true seguiranno il giocatore
        image_speed = 1;
        direction = point_direction(x, y, global.player.x, global.player.y);
        speed = spd;

        if (global.player.x > x) { 
            image_xscale = 1; 
        } else {
            image_xscale = -1;
        }

        if (instance_exists(obj_upgrade) || instance_exists(obj_return_button)) {
            speed = 0;
            image_speed = 0;
        }
    }
}

//global.player.depth = -global.player.y;
alarm[0] = alarmTime;



