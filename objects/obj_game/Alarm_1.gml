/// @description Set enemy and exp direction
// You can write your code in this editor

if (instance_exists(obj_player))
{
	with(obj_enemy)
	{
		direction = point_direction(x, y, obj_player.x, obj_player.y)
	}

	//with(obj_exp_shard)
	//{
	//	direction = point_direction(x, y, obj_player.x, obj_player.y)
	//}
}

alarm[1] = 20
