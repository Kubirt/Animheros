/// @description Are exp in range
// Vous pouvez écrire votre code dans cet éditeur
if (IsPaused())
{
	alarm[3] = alaTime3;
	exit;
}

if (instance_exists(obj_player)) {
	var _list = ds_list_create()
	var _num = collision_circle_list(obj_player.x, obj_player.y, obj_player.collectRadius, obj_exp_shard, false, true, _list, false)
	if (_num > 0)
		for (var i = 0; i < _num; i++)
			_list[|i].canFly = true
	var _list2 = ds_list_create()
	var _num2 = collision_circle_list(obj_player.x, obj_player.y, obj_player.collectRadius, obj_exp_shard2, false, true, _list2, false)
	if (_num2 > 0)
		for (var j = 0; j < _num2; j++)
			_list2[|j].canFly = true
}
alarm[3] = alaTime3;