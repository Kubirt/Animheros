/// @description Insert description here
// You can write your code in this editor
playerOffsetX = random_range(-100, 100)
playerOffsetY = random_range(-100, 100)

if (instance_exists(obj_player))
{
	x = playerOffsetX + obj_player.x;
	y = playerOffsetY + obj_player.y;
}

alarm[0] = 60
