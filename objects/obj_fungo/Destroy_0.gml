/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor

instance_create_depth(x, y, depth + 1, obj_exp_lv4)

		
		var drop_y = y + 20;
		 instance_create_depth(x, drop_y, depth + 1, obj_cassa_gold);
		 instance_create_depth(x, drop_y + 50, depth + 1, obj_potion_pickup);
		 
