/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if (IsPaused())
	{
		speed = 0
		exit;
	}

	if (canFly == true)
	{
		speed = baseSpeed
		direction = point_direction(x, y, obj_player.x, obj_player.y)
	}
}
