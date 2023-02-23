/// @description Voices
// Vous pouvez écrire votre code dans cet éditeur
tab = [snd_voice_stop_bully_animals, snd_voice_stop_please];

if (!audio_is_playing(snd_voice_parallel_universes))
	audio_play_sound(tab[random_range(0, array_length(tab))], 1, false);

alarm[7] = 420;