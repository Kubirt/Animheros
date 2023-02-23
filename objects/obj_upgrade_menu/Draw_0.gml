/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_game)) exit;

var tH = camera_get_view_height(view_camera[0]);
var tW = camera_get_view_width(view_camera[0]);
var tY = camera_get_view_y(view_camera[0]);
var tX = camera_get_view_x(view_camera[0]);
draw_text((tX + (tW / 2)) + 10, (tY + (tH / 2) + 20), obj_game.upgrade_points);
