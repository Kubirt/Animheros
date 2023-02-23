/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var inst_lay_id = layer_get_id("Instances");

if (!instance_exists(obj_boss)) {
	instance_deactivate_layer(inst_lay_id);
}
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 120, _vy - 120, _vw + 120, _vh + 120, 1);