/// @description Spawner enemies
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused())
{
	alarm[4] = alarmSpawnTime;
	exit;
}

var inst_lay_id = layer_get_id("Instances");

if instance_exists(obj_player) && Wave_1 == true {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_enemy_sushi) < maxSushi
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_sushi);
	}
}

if instance_exists(obj_player) && Wave_2 == true {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_enemy_wolf) < maxWolves
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_wolf);
	}
}

if instance_exists(obj_player) && Wave_3 == true && bossWave == false {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_enemy_sushi) < maxSushi * (obj_game.level / 5)
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_sushi);
	}

	if instance_number(obj_enemy_wolf) < maxWolves * (obj_game.level / 5)
	{
		instance_create_layer(XX, YY, "Instances", obj_enemy_wolf);
	}
}

if instance_exists(obj_player) && bossWave == true {
	var dir = irandom_range(0, 360);
	var XX = obj_player.x + lengthdir_x(665, dir);
	var YY = obj_player.y + lengthdir_y(665, dir);

	if instance_number(obj_boss) < 1
	{
		instance_create_layer(XX, YY, "Boss", obj_boss);
	}
}

alarm[4] = alarmSpawnTime;