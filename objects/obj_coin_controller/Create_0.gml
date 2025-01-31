
// Carica le monete dal file
global.coin = 0
ini_open("savefile.ini");
global.coins = ini_read_real("GameData", "Coins", 0); // Leggi le monete, default a 0
    // Salva i livelli dei potenziamenti e i costi
   
ini_close();

global.upgrade_count = 5;  // Numero totale di potenziamenti
global.upgrades = array_create(global.upgrade_count, 0);  // Livelli attuali dei potenziamenti
global.costs = array_create(global.upgrade_count, 1);     // Costo iniziale di ogni potenziamento
global.maxupgrades = 5;   // Livello massimo per ogni potenziamento
global.vel = 0
global.atk = 0
global.range = 0 
global.atkspd = 0
global.Extrahp = 0

function carica_dati() {
    if (file_exists("savefile.ini")) {  // Verifica se il file esiste
        ini_open("savefile.ini");  
        global.coins = ini_read_real("GameData", "Coins", 0);  // Carica le monete (default: 0)
        for (var i = 0; i < global.upgrade_count; i++) {
            global.upgrades[i] = ini_read_real("GameData", "Upgrade_" + string(i), 0);  // Carica i livelli
            global.costs[i] = ini_read_real("GameData", "Cost_" + string(i), 1);       // Carica i costi
			  global.vel = ini_read_real("Dati", "Vel", 0);
			  global.atk = ini_read_real("Dati", "Atk", 0);
			  global.range = ini_read_real("Dati", "Range", 0);
			  global.atkspd = ini_read_real("Dati", "AtkSpd", 0);
			  global.Extrahp = ini_read_real("Dati", "Extrahp", 0);
		}
        ini_close();
    }
}

function salva_dati() {
    ini_open("savefile.ini");
    ini_write_real("GameData", "Coins", global.coins);  // Salva le monete
    for (var i = 0; i < global.upgrade_count; i++) {
        ini_write_real("GameData", "Upgrade_" + string(i), global.upgrades[i]);  // Salva i livelli
        ini_write_real("GameData", "Cost_" + string(i), global.costs[i]);        // Salva i costi
		ini_write_real("Dati", "Vel", global.vel);
		ini_write_real("Dati", "Atk", global.atk);
		ini_write_real("Dati", "Range", global.range);
		ini_write_real("Dati", "AtkSpd", global.atkspd);
		ini_write_real("Dati", "Extrahp", global.Extrahp);
   }
    ini_close();
}

function reset_acquisti() {
    // Ripristina le variabili globali relative agli acquisti
    global.upgrades = [];    // Ripristina l'array dei livelli degli acquisti
    global.costs = [];       // Ripristina l'array dei costi degli acquisti
    global.coins = 1;        // Ripristina le monete
    global.atk = 0;          // Ripristina altri potenziamenti, se presenti
	global.vel = 0;
	global.range = 0;
	global.atkspd = 0;
	global.Extrahp = 0;

    // Imposta i costi iniziali per ogni potenziamento
    for (var i = 0; i < 5; i++) {
        global.upgrades[i] = 0;
        global.costs[i] = 50 * power(2, i);  // Esempio: Costo iniziale 1, raddoppia ad ogni acquisto
    }

    // Salva i dati ripristinati
    salva_dati();
}

// Carica i dati salvati (monete, potenziamenti, costi)
carica_dati();

function acquista_potenziamento(index) {
    if (global.upgrades[index] < global.maxupgrades) {  // Se non ha raggiunto il livello massimo
        if (global.coins >= global.costs[index]) {      // Se ha abbastanza monete
            global.coins -= global.costs[index];        // Sottrai il costo delle monete
            global.upgrades[index] += 1;                // Aumenta il livello del potenziamento
            global.costs[index] = global.costs[index] * 2;                   // Raddoppia il costo per il prossimo livello
			//global.costs[index] *= 2;   
			
            salva_dati();  // Salva i progressi
        } else {
            show_message("You don't have enough coins!!");
        }
    } else {
        show_message("You have reaced max level!");
    }
}