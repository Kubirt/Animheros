/// @description Insert description here
// You can write your code in this editor

var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed( _vx + _vw/2, _vy + _vh - _vh/40, string(minutes) + ":" + string(sec), 0.5, 0.5, 0);

draw_set_halign(fa_left)
draw_set_valign(fa_top)