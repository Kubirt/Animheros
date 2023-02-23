/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(snd_boss);
audio_play_sound(snd_doom, 1, true);
audio_play_sound(snd_voice_what, 2, false);

repeat(obj_game.level * obj_game.level) {
	instance_create_layer(random_range(x - 50, x + 50), random_range(y - 50, y + 50), "Instances", obj_exp_shard2)
}

obj_game.bossWave = false
obj_game.alarm[7] = obj_game.UntilBossWave;
obj_game.alarm[6] = 1;