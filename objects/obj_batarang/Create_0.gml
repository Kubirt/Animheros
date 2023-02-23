/// @description projectile creation
// Vous pouvez écrire votre code dans cet éditeur
if (instance_exists(obj_player)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
} else {
	direction = irandom(360);
}

tmp = speed;
