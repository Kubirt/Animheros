/// @description change bullet hell mode
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused()) {
	alarm[6] = 400;
	exit;
}

if (spiral_shoot == false and contineous_shoot == false) {
	spiral_shoot = true;
} else if (spiral_shoot == true and contineous_shoot == false) {
	spiral_shoot = false;
	contineous_shoot = true;
} else if (spiral_shoot == false and contineous_shoot == true) {
	spiral_shoot = false;
	contineous_shoot = false;
}

alarm[6] = 400;
