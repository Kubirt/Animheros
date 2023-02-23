// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetCompatibleUpgrades()
{
	//compatibleUpgrades = ds_list_create();
	
	with (obj_upgrade_base)
	{
		show_debug_message(self)
		show_debug_message(variable_instance_get(self.name, self.name))
	}
	
	//if (!instance_exists(obj_game))
	//	return compatibleUpgrades;
		
	//for (var i = 0; i < ds_list_size(obj_game.all_upgrades); i++)
	//{
	//	obj = ds_list_find_value(obj_game.all_upgrades, i);
	//		show_debug_message(instanceof(obj));
	//	test = instance_find(obj, 1);
	//	show_debug_message(test);
	//	//abcd = instance
	//	//if (instanceof(obj) != obj_upgrade_base) {
	//	//	continue;
	//	//}
	//	if (instanceof(obj).event_user[0])
	//		ds_list_add(compatibleUpgrades, obj);
	//}
		
	//return compatibleUpgrades;
	
	//if (obj_upgrade_ammo_shot_count.is_compatible)
	//	ds_list_add(compatibleUpgrades, obj_upgrade_ammo_shot_count);
}