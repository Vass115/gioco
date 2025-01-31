/// @description Inserisci qui la descrizione
//Puoi scrivere il tuo codice in questo editor


randomize()


var getRoomWidth = round (room_width/128)
var getRoomHeight = round (room_height/128)

var lay_id = layer_get_id("tiles_1")
var map_id = layer_tilemap_get_id(lay_id)

for (var width = 0; width < getRoomWidth; width ++){
for(var height = 0; height < getRoomHeight; height ++){




	var quality = choose(
	
	
	
	1,1,1,1,1,1,
	3,3,3,3,3,3,
	4,4,4,4,4,4,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	5,5,5,5,5,5,
	6,6,6,6,6,6,
	7,7,7,7,7,7,
	8,8,8,8,8,8,
	9,9,9,9,9,9,


	
	);
	
	
	tilemap_set(map_id, quality, width, height);
	
	
	
}
}