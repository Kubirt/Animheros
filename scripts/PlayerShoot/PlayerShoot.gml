// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerShoot(){
	if (!instance_exists(obj_player)) exit;

	if (obj_player.can_shoot == true) {
		if (current_time > obj_player.lastShoot + obj_player.shootDelay)
		{
			audio_play_sound(sfx_shoot, 1, false);
			var proj = instance_create_layer(x, y, "PlayerProjectiles", obj_bullet);
			proj.fire = fire;
			proj.freeze = freeze;
			proj.sniper = sniper;
			obj_player.lastShoot = current_time;

			repeat(bullets - 1)
			{
				var proj = instance_create_layer(x, y, "PlayerProjectiles", obj_bullet);
				proj.fire = fire;
				proj.freeze = freeze;
				proj.sniper = sniper;
				randDir = random_range(-10, 10);
				proj.direction += randDir;
				proj.image_angle += randDir;
				obj_player.lastShoot = current_time;
			}
		}
	}
}