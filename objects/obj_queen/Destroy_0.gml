/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
instance_create_depth(x, y, depth + 1, obj_exp_lv5)


  // Probabilità di creare la moneta
    if (random(10) <= 1) { // Cambia 0.5 in base alla probabilità desiderata
		 var drop_y = y + 20; // Aggiungi 10 pixel alla coordinata y per spostare la moneta verso il basso
        instance_create_depth(x, drop_y, depth + 1, obj_coin_pickup);
    }
	
	
	if(irandom(100) < 1){
		
		var drop_y = y + 20;
		 instance_create_depth(x, drop_y, depth + 1, obj_cassa_marrone);
		 
	}
	
	if(irandom(100) < 0.5){
		
		var drop_y = y + 20;
		 instance_create_depth(x, drop_y, depth + 1, obj_cassa_gold);
		 
	}
	
	
		var drop_y = y + 40;
		 instance_create_depth(x, drop_y, depth + 1, obj_porta);
	
	