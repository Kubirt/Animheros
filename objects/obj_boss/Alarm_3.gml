/// @description flying time
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused()) {
	obj_boss.alarm[3] = obj_boss.choose_dir_delay;
	exit;
}

if (obj_boss.flying == false) {
	obj_boss.flying = true;
	obj_boss.alarm[1] = 1;
	obj_boss.alarm[3] = obj_boss.choose_dir_delay;
} else {
	obj_boss.flying = false;
	obj_boss.alarm[3] = 0;
}