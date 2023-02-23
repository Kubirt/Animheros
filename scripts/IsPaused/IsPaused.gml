// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IsPaused(){
	if (instance_exists(obj_pause) or instance_exists(obj_upgrade_menu))
		return true;
	return false;
}