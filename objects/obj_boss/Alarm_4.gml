/// @description switch phase
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused()) {
	obj_boss.alarm[4] = 900;
	exit;
}

alarm[1] = 0;
alarm[2] = 0;
alarm[3] = 0;
alarm[4] = 0;
alarm[5] = 0;
alarm[6] = 0;
spiral_shoot = false;
contineous_shoot = false;
phase_nb = 2;
