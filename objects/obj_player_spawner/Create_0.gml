/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor
x= 5000
y= 5000
if global.player == 0 {
instance_create_layer(x,y,"Instances",obj_henzo)
instance_create_layer(x,y,"Instances_Menu",obj_cursore)
}else 
if global.player == 1 {
instance_create_layer(x,y,"Instances",obj_bluebaby)
instance_create_layer(x,y,"Instances_Menu",obj_cursore)
}else
if global.player == 2 {
instance_create_layer(x,y,"Instances",obj_dya)
instance_create_layer(x,y,"Instances_Menu",obj_cursore)
}else
if global.player == 3 {
instance_create_layer(x,y,"Instances",obj_sk)
instance_create_layer(x,y,"Instances_Menu",obj_cursore)
}