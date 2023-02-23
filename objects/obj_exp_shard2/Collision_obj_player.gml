/// @description Insert description here
// You can write your code in this editor
if (IsPaused()) exit;

instance_destroy()

obj_game.exp += 2;
if (obj_game.exp >= obj_game.expNeeded)
{
	obj_game.exp = 0;
	obj_game.expNeeded += obj_game.level;
	obj_game.level += 1
	obj_game.upgrade_points++;
}