// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnUpgrade()
{
	if (!instance_exists(obj_upgrade_menu))
		instance_create_depth(0, 0, 0, obj_upgrade_menu);
}
