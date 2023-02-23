/// @description logic loop
// Vous pouvez écrire votre code dans cet éditeur

if (IsPaused() or !instance_exists(obj_player)) {
	obj_boss.speed = 0;
	exit;
}

x = clamp(x, 64, room_width - 64);
y = clamp(y, 64, room_height - 64);

if (instance_exists(obj_player) and switching_phase == false and phase_nb == 1) {
	if (collision_circle(x, y, 200, obj_player, false, false) and flying != true) {
		obj_boss.alarm[3] = 1;
	}
}

if (obj_boss.hp <= obj_boss.max_hp / 2 and switching_phase == false and phase_nb == 1) {
	audio_stop_sound(snd_voice_stop_please);
	audio_stop_sound(snd_voice_stop_bully_animals);
	audio_stop_sound(snd_voice_proach_punishment);
	audio_play_sound(snd_voice_parallel_universes, 1, false);
	switching_phase = true;
	alarm[0] = 0;
	alarm[1] = 0;
	alarm[3] = 0;
	obj_boss.speed = 0;
	obj_boss.sprite_index = spr_batman_peta;
	x = room_width / 2;
	y = room_height / 2;
	alarm[4] = 1800;
	alarm[5] = 60;
	alarm[6] = 1;
	obj_player.can_shoot = false;
}

if (phase_nb == 2 and phase_switched == false) {
	phase_switched = true;
	obj_player.can_shoot = true;
	bat_spawn_rate = 360;
	alarm[2] = bat_spawn_rate;
	alarm[5] = 60;
	obj_boss.speed = (obj_player.moveSpeed - 0.5);
	obj_boss.direction = point_direction(x, y, obj_player.x, obj_player.y);
} else if (phase_nb == 2 and phase_switched == true){
	obj_boss.direction = point_direction(x, y, obj_player.x, obj_player.y);
}