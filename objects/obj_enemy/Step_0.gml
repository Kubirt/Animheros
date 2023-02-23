/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (IsPaused())
{
	speed = 0
	exit;
}

if (instance_exists(obj_player))
{
	if (freeze != 1)
	{
		effect_create_below(ef_flare, x, y, 0, c_aqua);
	}
	speed = baseSpeed * freeze
	direction = point_direction(x, y, obj_player.x, obj_player.y)
}

if (life <= 0)
{
	instance_destroy();
}
