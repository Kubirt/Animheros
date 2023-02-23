/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
instance_destroy(other);

if (isInvincible)
{
	hit = false;
	exit;
}

isInvincible = true;
audio_play_sound(snd_player_hit, 2, false);

if (shield > 0) {
	effect_create_above(ef_star, x + 20, y - 40, 1, c_purple);
	shield--;
	alarm[2] = 7200;
} else {
	effect_create_above(ef_star, x + 20, y - 40, 1, c_yellow);
	playerHealth -= 1;
}
if (obj_player.playerHealth <= 0) {
	effect_create_above(ef_firework, x, y, 1, c_white);
	instance_destroy();
	obj_game.alarm[0] = 120;
} else {
	obj_player.alarm[0] = dmgInvincibilityFrameTime;
}
