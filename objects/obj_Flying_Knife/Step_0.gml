/// @description Insert description here
// You can write your code in this editor

if (IsPaused())
{
	speed = 0
	exit;
} else
	speed = baseSpeed

//nearest_enemy = instance_nearest(x, y, obj_enemy)
if (!self.hasTarget)
{
	var nearest_distance = 0;
	with(obj_enemy)
	{
		if !other.hasTarget and !self.knifeTargeted
		{
			other.nearest_enemy = self;
			nearest_distance = distance_to_object(other);
			other.hasTarget = true;
		}
		else
		{
			if self.knifeTargeted
				continue;
			if distance_to_object(other) < nearest_distance or nearest_distance == 0
			{
				other.nearest_enemy = self;
				nearest_distance = distance_to_object(other);
				hasTarget = true;
			}
		}
	}
	if (hasTarget)
	{
		nearest_enemy.knifeTargeted = true;
	}
}

if (hasTarget)
{
	if instance_exists(nearest_enemy)
	{
		direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y)
		image_angle = direction - 130
	}
	else
		hasTarget = false;
}