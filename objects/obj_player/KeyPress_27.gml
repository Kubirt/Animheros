/// @description Pause game
// You can write your code in this editor

if (!IsPaused())
{
	PauseGame();
	
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	
	instance_create_layer(_vx + _vw/2, _vy + _vh/2 - 50, "Controllers", obj_resume)
	instance_create_layer(_vx + _vw/2, _vy + _vh/2 + 50, "Controllers", obj_main_menu_pause)
	//for(var i=0; i<10; i++)
	//{
	//    obj_player.c_alarm[i] = obj_player.alarm[i];
	//}
}
else
{
	UnpauseGame();

	//for(var i=0; i<10; i++)
	//{
	//    obj_player.alarm[i] = obj_player.c_alarm[i];
	//}
}
