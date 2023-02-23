/// @description Insert description here
// You can write your code in this editor
randomize();

var getRoomHeight = round(room_height/32);
var getRoomWidth = round(room_width/32);

var lay_id = layer_get_id("Tiles");
var map_id = layer_tilemap_get_id(lay_id);

for (var width = 0; width < getRoomWidth; width++) {
	for (var height = 0; height < getRoomHeight; height++) {
		var quality = choose(
			1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
			2,3,3,3,3,4,4,5,5,6,6,7,7,8,8
		);
		tilemap_set(map_id, quality, width, height);
	}
}