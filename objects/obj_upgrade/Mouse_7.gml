/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


if(state == "idle"){
	
	obj_upgrade.state  = "go away"
	image_blend = c_orange 	
	
		if(sprite_index == spr_upgrade_arrow) {global.player.Damage_Arrow += 3}
		else
		if(sprite_index == spr_upgrade_slash) {global.player.Damage_Slash += 1}
		else
		
		if(sprite_index == spr_upgrade_bone) {global.player.Damage_Bone += 3}
		else
		
		if(sprite_index == spr_upgrade_fuoco) {global.player.Damage_Fuoco += 0.1}
		else
		
		if(sprite_index == spr_upgrade_molotov) {global.player.Damage_molotovarea += 0.1}
		else
		
		if(sprite_index == spr_upgrade_ice) {global.player.Damage_ice += 5}	
		else
		
		if(sprite_index == spr_upgrade_book) {global.player.Damage_book += 4}	
		else
		
		if(sprite_index == spr_upgrade_turret) {global.player.Damage_turret += 7}	
		else
		
		if(sprite_index == spr_upgrade_sun) {global.player.Damage_sun += 0.01}	
		else
		
		if(sprite_index == spr_upgrade_durendal) {global.player.Damage_durendal += 3}	
	}
	
	
	
	

	



	
	/*atk speed
	if(sprite_index == spr_upgrade_arrow) {
	if(global.player.alartime[0] > 20 ) {global.player.alartime[0]   -= 5}
	}*/
	
	

