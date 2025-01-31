// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
/*
var y_start = 50;  // Posizione di partenza per il primo potenziamento
var button_width = 200;
var button_height = 40;

for (var i = 0; i < global.upgrade_count; i++) {
    var y_offset = y_start + (i * (button_height + 20));  // Aumenta lo spazio tra i potenziamenti

    // Mostra il testo con le informazioni del potenziamento
    draw_text(60, y_offset + 200, "Potenziamento " + string(i + 1) + " | Livello: " + string(global.upgrades[i]) + "/" + string(global.maxupgrades));
   

    draw_text(60, y_offset + 225, "Costo: " + string(global.costs[i]) + " monete");
}
*/
var y_start = 50;  // Posizione di partenza per il primo potenziamento
var button_width = 200;
var button_height = 40;

// Array con i nomi dei potenziamenti
global.upgrade_names = ["Speed", "Attack", "PickupRange", "AtkSpd", "Hp"];

for (var i = 0; i < global.upgrade_count; i++) {
    var y_offset = y_start + (i * (button_height + 20));  // Aumenta lo spazio tra i potenziamenti

    // Usa il nome dal tuo array invece di "Potenziamento X"
    draw_text(60, y_offset + 200, global.upgrade_names[i] + " | Level: " + string(global.upgrades[i]) + "/" + string(global.maxupgrades));

    draw_text(60, y_offset + 225, "Cost: " + string(global.costs[i]) + " Coin");
}


draw_text(room_width / 2 - 40, room_height -375, "Speed");
draw_text(room_width / 2 + 180, room_height - 375, "Attack");
draw_text(room_width / 2 + 350, room_height - 375, "PickupRange");
draw_text(room_width / 2 + 50, room_height - 215, "AtkSpd");
draw_text(room_width / 2 + 300, room_height - 215, "Hp");




