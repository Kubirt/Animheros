// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if (!instance_exists(obj_player)) exit;

function CreateKnife(){
	var knife = instance_create_layer(obj_player.x, obj_player.y, "PlayerProjectiles", obj_Flying_Knife);

	knife.baseSpeed = 4
	knife.speed = 4
}