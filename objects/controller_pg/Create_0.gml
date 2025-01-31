/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
// Controlla e crea il personaggio selezionato
global.player = -1
global.henzo = 0
global.bluebaby = 1
global.dya = 2
global.sk = 3
if global.player == 0
instance_create_layer(x,y,"Instances",obj_henzo)
else 
if global.player == 1
instance_create_layer(x,y,"Instances",obj_bluebaby)
else
if global.player == 2
instance_create_layer(x,y,"Instances",obj_dya)
else
if global.player == 3
instance_create_layer(x,y,"Instances",obj_sk)



