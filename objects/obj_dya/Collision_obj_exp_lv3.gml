/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
/*
if (instance_exists(obj_upgrade)) { exit; }

xp += 1;
if (xp >= xpNext) {

    xp = 0;
    xpNext = xpNext * 2;

    // Centro della vista della camera
    var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
    var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);

    // Distanza verticale tra le opzioni
    var offsetY = 100;
	var offsetX = 150;
	
	
	if(slot[1] == "fuoco"){
    // Creazione del primo oggetto (sopra)
    var a = instance_create_layer(_vx, _vy - offsetY,"instances_menu" , obj_upgrade);
    a.destionationY = _vy - offsetY;
    a.image_alpha = 1;
    a.sprite_index = spr_upgrade_fuoco;
	}
	
    // Creazione del secondo oggetto (al centro)
    var b = instance_create_depth(_vx, _vy, depth, obj_upgrade);
    b.destionationY = _vy;
    b.image_alpha = 1;
    b.sprite_index = spr_upgrade_arrow;

	if(slot[2] = "fulmine"){
    // Creazione del terzo oggetto (sotto)
    var c = instance_create_layer(_vx, _vy + offsetY, "instances_menu" , obj_upgrade);
    c.destionationY = _vy + offsetY;
    c.image_alpha = 1;
	c.sprite_index = spr_upgrade_thunderbolt
	
}

if(slot[3] = "roccia"){
    // Creazione del terzo oggetto (sotto)
    var c = instance_create_layer(_vx, _vy + offsetY, "instances_menu" , obj_upgrade);
    c.destionationY = _vy + offsetY + offsetY;
    c.image_alpha = 1;
	c.sprite_index = spr_upgrade_rock
	
}














}

instance_destroy(other.id);

*/

if (instance_exists(obj_upgrade)) { exit; }
	if(instance_exists(obj_return_button)){ exit; }

xp += 50;
if (xp >= xpNext) {
	
xp = 0;

level += 1

xpNext = round(xpNext * power(1.2, level)); // Aumenta con la potenza del livell

    // Centro della vista della camera
    var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
    var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);

    // Distanza verticale e orizzontale tra le opzioni
    var offsetY = 75;
    var offsetX = 200;

    // Colonna Sinistra
    if (slot[4] == "molotov") {
        var a = instance_create_layer(_vx - offsetX, _vy - offsetY * 2, "instances_menu", obj_upgrade);
        a.destionationY = _vy - offsetY * 2;
        a.image_alpha = 1;
        a.sprite_index = spr_upgrade_molotov;
		a.image_xscale = 0.7; 
		a.image_yscale = 0.7; 
    }

    if (slot[6] == "book") {
        var b = instance_create_layer(_vx - offsetX, _vy - offsetY, "instances_menu", obj_upgrade);
        b.destionationY = _vy - offsetY;
        b.image_alpha = 1;
        b.sprite_index = spr_upgrade_book;
		b.image_xscale = 0.7; 
		b.image_yscale = 0.7; 
    }

    if (slot[8] == "sun") {
        var c = instance_create_layer(_vx - offsetX, _vy, "instances_menu", obj_upgrade);
        c.destionationY = _vy;
        c.image_alpha = 1;
        c.sprite_index = spr_upgrade_sun;
		c.image_xscale = 0.7; 
		c.image_yscale = 0.7; 
    }

    if (slot[10] == "a") {
        var d = instance_create_layer(_vx - offsetX, _vy + offsetY, "instances_menu", obj_upgrade);
        d.destionationY = _vy + offsetY;
        d.image_alpha = 1;
        d.sprite_index = spr_upgrade_arrow;
		d.image_xscale = 0.7; 
		d.image_yscale = 0.7; 
    }

    // Colonna Centrale
    if (slot[1] == "fuoco") {
        var e = instance_create_layer(_vx, _vy - offsetY * 2, "instances_menu", obj_upgrade);
        e.destionationY = _vy - offsetY * 2;
        e.image_alpha = 1;
        e.sprite_index = spr_upgrade_fuoco;
		e.image_xscale = 0.7; 
		e.image_yscale = 0.7; 
    }

    if (slot[2] == "fulmine") {
        var f = instance_create_layer(_vx, _vy - offsetY, "instances_menu", obj_upgrade);
        f.destionationY = _vy - offsetY;
        f.image_alpha = 1;
        f.sprite_index = spr_upgrade_thunderbolt;
		f.image_xscale = 0.7; 
		f.image_yscale = 0.7; 
    }

    // Aggiungi un oggetto di testo o un altro oggetto qui tra il 6° e il 7° slot
    var z = instance_create_layer(_vx, _vy, "instances_menu", obj_upgrade); // Sostituisci obj_letter con l'oggetto che desideri creare
    z.destionationY = _vy; // Imposta la posizione desiderata
    z.image_alpha = 1; // Imposta l'opacità dell'oggetto
    z.sprite_index = spr_upgrade_slash;
	z.image_xscale = 0.7; 
	z.image_yscale = 0.7; 

    if (slot[3] == "roccia") {
        var g = instance_create_layer(_vx, _vy + offsetY, "instances_menu", obj_upgrade);
        g.destionationY = _vy + offsetY;
        g.image_alpha = 1;
        g.sprite_index = spr_upgrade_rock;
		g.image_xscale = 0.7; 
		g.image_yscale = 0.7; 
    }

// ora a destra

    if (slot[5] == "ice") {
        var h = instance_create_layer(_vx + offsetX, _vy - offsetY * 2, "instances_menu", obj_upgrade);
        h.destionationY = _vy - offsetY * 2;
        h.image_alpha = 1;
        h.sprite_index = spr_upgrade_ice;
		h.image_xscale = 0.7; 
		h.image_yscale = 0.7; 
    }

    if (slot[7] == "turret") {
        var i = instance_create_layer(_vx + offsetX, _vy - offsetY, "instances_menu", obj_upgrade);
        i.destionationY = _vy - offsetY;
        i.image_alpha = 1;
        i.sprite_index = spr_upgrade_turret;
		i.image_xscale = 0.7; 
		i.image_yscale = 0.7; 
    }

    if (slot[9] == "durendal") {
        var j = instance_create_layer(_vx + offsetX, _vy, "instances_menu", obj_upgrade);
        j.destionationY = _vy;
        j.image_alpha = 1;
        j.sprite_index = spr_upgrade_durendal;
		j.image_xscale = 0.7; 
		j.image_yscale = 0.7; 
    }

    if (slot[11] == "a") {
        var k = instance_create_layer(_vx + offsetX, _vy + offsetY, "instances_menu", obj_upgrade);
        k.destionationY = _vy + offsetY;
        k.image_alpha = 1;
        k.sprite_index = spr_upgrade_rock;
		k.image_xscale = 0.7; 
		k.image_yscale = 0.7; 
    }


}

instance_destroy(other.id);


