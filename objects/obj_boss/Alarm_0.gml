/// @description shoot batarang
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused()) {
	obj_boss.alarm[0] = 0;
	exit;
}

instance_create_layer(x, y, "Boss", obj_batarang, { speed : 5 });

obj_boss.alarm[0] = obj_boss.shooting_rate;