/// @description summon bats
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused()) {
	obj_boss.alarm[2] = bat_spawn_rate;
	exit;
}

for (var _x = -100; _x <= 100; _x += 50) {
	for (var _y = -100; _y <= 100; _y += 50) {
		if ((_x == 0 and _y != 100 and _y != -100) or (_y == 0 and _x != 100 and _x != -100))
			continue;
		if (_x == 100 or _x == -100)
			instance_create_layer(x + _x, y, "Boss", obj_enemy_bat);
		else if (_y == 100 or _y == -100)
			instance_create_layer(x, y + _y, "Boss", obj_enemy_bat);
		else
		instance_create_layer(x + _x, y + _y, "Boss", obj_enemy_bat);
	}
}

alarm[2] = bat_spawn_rate;