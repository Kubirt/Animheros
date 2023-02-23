/// @description choose direction
// Vous pouvez écrire votre code dans cet éditeur
if (!instance_exists(obj_player)) exit;

if (IsPaused()) {
	obj_boss.alarm[1] = obj_boss.choose_dir_delay;
	exit;
}

var dir = point_direction(obj_player.x, obj_player.y, x, y);

if obj_boss.flying == false {
	if (obj_boss.sprite_index == spr_bat_man)
		obj_boss.sprite_index = spr_batman_peta;
	direction = irandom(360);
	speed = obj_boss.movement_speed;
	obj_boss.alarm[0] = obj_boss.shooting_rate;
	obj_boss.alarm[2] = 0;
} else if obj_boss.flying == true {
	obj_boss.alarm[2] = 1;
	if (obj_player.x > x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	if (obj_boss.sprite_index != spr_bat_man)
		obj_boss.sprite_index = spr_bat_man;
	if (instance_exists(obj_player)) {
		direction = dir;
	}
	speed = 10;
	obj_boss.alarm[0] = 0;
}

obj_boss.alarm[1] = obj_boss.choose_dir_delay;