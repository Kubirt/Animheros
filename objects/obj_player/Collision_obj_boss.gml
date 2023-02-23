/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (isInvincible)
{
	exit;
} else {
	audio_play_sound(snd_player_hit, 2, false);
	isInvincible = true;
	if (shield > 1) {
		effect_create_above(ef_star, x + 20, y - 40, 1, c_purple);
		sprite_index = spr_player_dmg_shield
		alarm[5] = 4
		shield -= 2;
		alarm[2] = 7200;
	} else if (shield > 0){
		effect_create_above(ef_star, x + 20, y - 40, 1, c_purple);
		sprite_index = spr_player_dmg_shield
		alarm[5] = 4
		shield -= 1;
		alarm[2] = 7200;
		effect_create_above(ef_star, x + 20, y - 40, 1, c_yellow);
		sprite_index = spr_player_dmg
		alarm[5] = 4
		playerHealth -= 1;
	} else {
		effect_create_above(ef_star, x + 20, y - 40, 1, c_yellow);
		sprite_index = spr_player_dmg
		alarm[5] = 4
		playerHealth -= 2;
	}
	if (obj_player.playerHealth <= 0) {
		effect_create_above(ef_firework, x, y, 1, c_white);
		instance_destroy();
		obj_game.alarm[0] = 120;
	} else {
		obj_player.alarm[0] = dmgInvincibilityFrameTime;
	}
}

