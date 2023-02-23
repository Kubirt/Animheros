/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_pause)) exit;

if (!instance_exists(obj_upgrade_menu))
	instance_create_layer(0, 0, "Controllers", obj_upgrade_menu)
else
	instance_destroy(obj_upgrade_menu)
