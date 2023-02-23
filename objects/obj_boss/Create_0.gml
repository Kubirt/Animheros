/// @description boss creation
// Vous pouvez écrire votre code dans cet éditeur
instance_activate_layer("Instances");
layer_destroy_instances("Instances");
if (!instance_exists(obj_player))
	exit;
audio_stop_sound(snd_game);
audio_stop_sound(snd_doom);
audio_play_sound(snd_voice_proach_punishment, 1, false);
audio_play_sound(snd_boss, 1, true);
speed = obj_boss.movement_speed;
direction = irandom(360);
switching_phase = false;
phase_nb = 1;
max_hp = 5 * obj_game.level * obj_game.level;
hp = obj_boss.max_hp;
spiral_shoot = false;
contineous_shoot = false;
dir = 0;
choose_dir_delay = 100;
tp_player = false;
phase_switched = false;
bat_spawn_rate = 120;
obj_player.shield = 0;

//shoot batarang
alarm[0] = obj_boss.shooting_rate;
//choose direction
alarm[1] = obj_boss.choose_dir_delay;
//summon bats
alarm[2] = 0;
//flying time
alarm[3] = 0;
//switch phase
alarm[4] = 0;
//bullet hell phase
alarm[5] = 0;
//bullet hell mode
alarm[6] = 0
//play voiceline
alarm[7] = 420;
