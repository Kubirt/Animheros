/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (!instance_exists(obj_player)) exit;

// Inherit the parent event
event_inherited();

if (obj_player.x > x) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}
