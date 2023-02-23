/// @description Go to player
// You can write your code in this editor
if (!instance_exists(obj_player)) exit;

if (IsPaused())
{
	speed = 0;
	alarm[1] = 60;
	exit;
} else
	speed = obj_player.moveSpeed;

if (distance_to_object(obj_player) > 20)
{
	direction = point_direction(x, y, obj_player.x + playerOffsetX / 5, obj_player.y + playerOffsetY / 5);
	alarm[1] = 10;
	exit;
}

alarm[0] = 1
