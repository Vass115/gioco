/// @ Spawna i nemici
//Puoi scrivere il tuo codice in questo editor

if(room == Room2){
	
window_set_cursor(cr_none); // Nasconde il cursore del mouse


	
	
alarm[1] = alarmSpawnTime



if(instance_exists(obj_upgrade)){ exit; }
if(instance_exists(obj_return_button)){ exit; }


var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 480, _vy - 480, _vw + 640, _vh + 640, 1);
instance_deactivate_region(_vx - 480, _vy - 480, _vw + 640, _vh + 640, 0, 1);



if(timerM < 120){
repeat(2){
	


var dir = irandom_range(0,360)
var XX = global.player.x +  lengthdir_x(480, dir)
var YY= global.player.y +  lengthdir_y(480, dir)

var new_a = irandom(9);

// Decidi quale tipo di nemico creare in base al valore di new_a
if (new_a < 3) {
    // Crea obj_slime per i valori da 0 a 2
    instance_create_depth(XX, YY, depth + 1, obj_slime);
} else if (new_a < 6) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_bat);
} else {
    // Crea obj_ghost per i valori da 6 a 9
    instance_create_depth(XX, YY, depth + 1, obj_ghost);
}

}

}

	
	if(timerM > 120 && timerM < 240){
repeat(2){
	


var dir = irandom_range(0,360)
var XX = global.player.x +  lengthdir_x(480, dir)
var YY= global.player.y +  lengthdir_y(480, dir)

var new_a = irandom(9);

// Decidi quale tipo di nemico creare in base al valore di new_a
if (new_a < 3) {
    // Crea obj_slime per i valori da 0 a 2
    instance_create_depth(XX, YY, depth + 1, obj_scheletro);
} else if (new_a < 6) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_manichino);
} else {
    // Crea obj_ghost per i valori da 6 a 9
    instance_create_depth(XX, YY, depth + 1, obj_zombi);
}

}
	
	}



	if(timerM > 240 && timerM < 360){
repeat(2){
	


var dir = irandom_range(0,360)
var XX = global.player.x +  lengthdir_x(480, dir)
var YY= global.player.y +  lengthdir_y(480, dir)

var new_a = irandom(8);

var new_b = irandom(500)


if(new_b = 500){
	instance_create_depth(XX,YY,depth + 1, obj_fungo)
}


// Decidi quale tipo di nemico creare in base al valore di new_a
if (new_a < 2) {
    // Crea obj_slime per i valori da 0 a 2
    instance_create_depth(XX, YY, depth + 1, obj_slime2);
} else if (new_a < 4) {
    // Crea obj_bat per i valori da 2 a 4
    instance_create_depth(XX, YY, depth + 1, obj_bat2);
} else if(new_a < 6){
    // Crea obj_ghost per i valori da 4 a 6
    instance_create_depth(XX, YY, depth + 1, obj_kamikaze);
}else {
	instance_create_depth(XX,YY,depth+ 1,obj_ghost2);
}

}
	
	}





	if(timerM > 360 && timerM < 480){
repeat(2){
	


var dir = irandom_range(0,360)
var XX = global.player.x +  lengthdir_x(480, dir)
var YY= global.player.y +  lengthdir_y(480, dir)

var new_a = irandom(9);

var new_b = irandom(500)


if(new_b = 500){
	instance_create_depth(XX,YY,depth + 1, obj_fungo)
}


// Decidi quale tipo di nemico creare in base al valore di new_a
if (new_a < 3) {
    // Crea obj_slime per i valori da 0 a 2
    instance_create_depth(XX, YY, depth + 1, obj_armatura);
} else if (new_a < 6) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_zombie2);
} else {
    // Crea obj_ghost per i valori da 6 a 9
    instance_create_depth(XX, YY, depth + 1, obj_scheletro2);
}

}
	
	}



if(timerM > 480 ){
repeat(2){
	


var dir = irandom_range(0,360)
var XX = global.player.x +  lengthdir_x(480, dir)
var YY= global.player.y +  lengthdir_y(480, dir)

var new_a = irandom(18);

var new_b = irandom(500)


if(new_b = 500){
	instance_create_depth(XX,YY,depth + 1, obj_fungo)
}


// Decidi quale tipo di nemico creare in base al valore di new_a
if (new_a < 3) {
    // Crea obj_slime per i valori da 0 a 2
    instance_create_depth(XX, YY, depth + 1, obj_armatura);
} else if (new_a < 6) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_zombie2);
} else if (new_a < 9) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_bat2);
}  else if (new_a < 12) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_ghost2);
}  else if (new_a < 15) {
    // Crea obj_bat per i valori da 3 a 5
    instance_create_depth(XX, YY, depth + 1, obj_scheletro2);
} else {
    // Crea obj_ghost per i valori da 6 a 9
    instance_create_depth(XX, YY, depth + 1, obj_kamikaze);
}


}
	
	}









alarm[1] = alarmSpawnTime

} else
window_set_cursor(cr_default); // Ripristina il cursore predefinito




	/*
show_debug_message("Timer attivo: " + string(timerM));
show_debug_message("Position X: " + string(x));
show_debug_message("Position Y: " + string(y));
	*/




