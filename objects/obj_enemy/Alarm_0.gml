/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (IsPaused())
{
	alarm[0] = alarmSpawnTime;
	exit;
}


//var inst_lay_id = layer_get_id("Instances");

//instance_deactivate_layer(inst_lay_id);
//var _vx = camera_get_view_x(view_camera[0]);
//var _vy = camera_get_view_y(view_camera[0]);
//var _vw = camera_get_view_width(view_camera[0]);
//var _vh = camera_get_view_height(view_camera[0]);
//instance_activate_region(_vx - 120, _vy - 120, _vw + 120, _vh + 120, 1);

if instance_exists(obj_player) && obj_game.Wave_1 == true {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_enemy_sushi) < obj_game.maxSushi
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_sushi);
	}
}

if instance_exists(obj_player) && obj_game.Wave_2 == true {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_enemy_wolf) < obj_game.maxWolves
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_wolf);
	}
}

if instance_exists(obj_player) && obj_game.Wave_3 == true && obj_game.bossWave == false {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_enemy_sushi) < obj_game.maxSushi * (obj_game.level / 5)
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_sushi);
	}

	if instance_number(obj_enemy_wolf) < obj_game.maxWolves * (obj_game.level / 5)
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_wolf);
	}
}

alarm[0] = alarmSpawnTime;