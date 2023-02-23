/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var _list = ds_list_create();
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy, false, false, _list, true);

if (_num > 0) {
	for (var i = 0; i < _num; ++i;) {
		var dir = point_direction(x,y, _list[| i].x, _list[| i].y)
		_list[| i].x = _list[| i].x + lengthdir_x(5, dir);
		_list[| i].y = _list[| i].y + lengthdir_y(5, dir);
	}
}
