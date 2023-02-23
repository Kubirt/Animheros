/// @description Go to enemy
// You can write your code in this editor
if (!instance_exists(obj_player)) exit;

if (IsPaused())
{
	speed = 0;
	alarm[0] = 60;
	exit;
} else
	speed = obj_player.moveSpeed;
	
if (instance_exists(obj_player))
{
	show_debug_message(distance_to_object(obj_player))
	if (distance_to_object(obj_player) > 500)
	{
		speed = obj_player.moveSpeed;
		alarm[1] = 1;
		exit
	}
	else
	{
		
		nearest_enemy = instance_nearest(x, y, obj_enemy)
		if (nearest_enemy != noone)
			direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
		speed = obj_player.moveSpeed / 3;
	}
}

alarm[0] = 10;
