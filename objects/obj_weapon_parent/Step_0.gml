/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


/*
if(instance_exists(obj_upgrade)){ exit; }
	if(instance_exists(obj_return)){ exit; }




// Crea una lista per memorizzare le istanze dei nemici colpiti
var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parents, false, true, _list, false);


if (_num > 0)
{
    for (var i = 0; i < _num; ++i)
    {
		
        // Infliggi danno al nemico
        _list[| i].hp -= dmg;
        instance_destroy()
        // Distruggi il nemico se la vita è <= 0
        if (_list[| i].hp <= 0)
        {
            instance_destroy(_list[| i]);
        }
    }
    
  
}

// Distruggi la lista per liberare la memoria
ds_list_destroy(_list);
*/



// Se l'oggetto deve fermarsi perché esiste obj_upgrade o obj_return
if (instance_exists(obj_upgrade) || instance_exists(obj_return_button)) {
    if (!is_paused) { // Se non è già in pausa
        speed_original = speed; // Salva la velocità corrente
        speed = 0;              // Ferma l'oggetto
        image_speed = 0;        // Ferma l'animazione
        is_paused = true;       // Imposta lo stato di pausa
    }
} 
else {
    // Ripristina la velocità quando la pausa termina
    if (is_paused) {
        speed = speed_original; // Ripristina la velocità originale
        image_speed = 1;        // Ripristina l'animazione (se serve)
        is_paused = false;      // Esci dallo stato di pausa
    }
}

if (!is_paused) { // Esegui solo se non è in pausa
// ---- Collisioni ----
var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parents, false, true, _list, false);

if (_num > 0) {
    for (var i = 0; i < _num; ++i) {
        _list[| i].hp -= dmg; // Infliggi danno
        instance_destroy();   // Distruggi l'oggetto corrente
        if (_list[| i].hp <= 0) {
            instance_destroy(_list[| i]); // Distruggi il nemico
        }
    }
}

// Libera la memoria
ds_list_destroy(_list);
}











