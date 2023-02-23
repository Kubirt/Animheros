/// @description Insert description here
// You can write your code in this 
if (obj_game.upgrade_points <= 0) exit;

if (self.name == "bullet")
{
	audio_play_sound(sfx_bullet, 1, false);
	obj_player.bullets++;
}
else if (self.name == "health")
{
	audio_play_sound(sfx_health, 1, false);
	obj_player.playerHealth++;
}
else if (self.name == "shield")
{
	audio_play_sound(sfx_shield, 1, false);
	obj_player.maxShield++;
	obj_player.shield++;
} 
else if (self.name == "speed")
{
	audio_play_sound(sfx_speed, 1, false);
	obj_player.moveSpeed++;
}
else if (self.name == "sniper")
{
	audio_play_sound(sfx_sniper, 1, false);
	obj_player.sniper++;
}
else if (self.name == "sushi")
{
	audio_play_sound(sfx_sushi, 1, false);
	instance_create_layer(0, 0, "PlayerProjectiles", obj_pet_sushi);
}
else if (self.name == "knife")
{
	audio_play_sound(sfx_knife, 1, false);
	CreateKnife();
}
else if (self.name == "fireball")
{
	audio_play_sound(sfx_fireball, 1, false);
	obj_player.fire++;
}
else if (self.name == "freeze")
{
	audio_play_sound(sfx_freeze, 1, false);
	obj_player.freeze *= 0.75;
}
else if (self.name == "nuke")
{
	audio_play_sound(sfx_nuke, 1, false);
	effect_create_above(ef_ring, obj_player.x, obj_player.y, 2, c_green);
	var _list = ds_list_create()
	var _num = collision_circle_list(obj_player.x, obj_player.y, obj_player.collectRadius, obj_enemy, false, true, _list, false)
	if (_num > 0)
		for (var i = 0; i < _num; i++)
			_list[|i].life -= 25
	instance_destroy(obj_upgrade_menu)
}
obj_game.upgrade_points -= 1;
