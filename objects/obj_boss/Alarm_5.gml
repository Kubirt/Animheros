/// @description bullet hell phase
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused()) {
	if (spiral_shoot == true or contineous_shoot == true) {
		obj_boss.alarm[5] = 5;
	} else {
		obj_boss.alarm[5] = 120;
	}
	exit;
}

if (tp_player == false) {
	tp_player = true;
	obj_player.x = room_width / 2;
	obj_player.y = room_height / 2 + 300;
}

if (spiral_shoot == true) {
	if (dir < 360) {
		dir += random_range(10, 40);
	} else {
		dir = 0;
	}
	instance_create_layer(x, y, "Boss", obj_peta_batarang, { direction : obj_boss.dir });
	instance_create_layer(x, y, "Boss", obj_peta_batarang, { direction : obj_boss.dir + 180 });
	instance_create_layer(x, y, "Boss", obj_peta_batarang, { direction : obj_boss.dir + 90 });
	instance_create_layer(x, y, "Boss", obj_peta_batarang, { direction : obj_boss.dir - 90 });
	alarm[5] = 5;
} else if (contineous_shoot == true) {
	instance_create_layer(x, y, "Boss", obj_batarang, { speed : 15 });
	alarm[5] = 5;
} else {
	for (var _x = -100; _x <= 100; _x += 50) {
		for (var _y = -100; _y <= 100; _y += 50) {
			if ((_x == 0 and _y != 100 and _y != -100) or (_y == 0 and _x != 100 and _x != -100))
				continue;
			if (_x == 100 or _x == -100)
				instance_create_layer(x + _x, y, "Boss", obj_peta_batarang, { direction : dir });
			else if (_y == 100 or _y == -100)
				instance_create_layer(x, y + _y, "Boss", obj_peta_batarang, { direction : dir });
			else
			instance_create_layer(x + _x, y + _y, "Boss", obj_peta_batarang, { direction : dir });
			if (dir < 360)
				dir += 45;
			else
				dir = 0;
		}
	}
	dir += 30
	alarm[5] = 120
}