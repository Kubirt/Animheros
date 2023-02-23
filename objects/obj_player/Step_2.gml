/// @description Move camera
// You can write your code in this editor
if (IsPaused()) exit;

var width = camera_get_view_width(view_camera[0]) / 2
var height = camera_get_view_height(view_camera[0]) / 2

camera_set_view_pos(view_camera[0], x - width, y - height)

var halfViewWidth = camera_get_view_width(view_camera[0]) / 2
var halfViewHeight = camera_get_view_height(view_camera[0]) / 2

cx = x - halfViewWidth
cy = y - halfViewHeight

cx = clamp(cx, min_view_x, max_view_x)
cy = clamp(cy, min_view_y, max_view_y)

camera_set_view_pos(view_camera[0], cx, cy)