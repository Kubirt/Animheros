/// @description Make enemies looking the player
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused())
{
	alarm[2] = alaTime;
	exit;
}

with(obj_enemy)
{
	if (instance_exists(obj_player)) {
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		
		if (obj_player.x > x) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}
	}
}

alarm[2] = alaTime;
