/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player)) exit;

cursor_sprite = -1;
window_set_cursor(cr_default);

var tH = camera_get_view_height(view_camera[0]);
var tW = camera_get_view_width(view_camera[0]);
var tY = camera_get_view_y(view_camera[0]);
var tX = camera_get_view_x(view_camera[0]);
var originalTX = tX

var upgradePointsImg = instance_create_depth((tX + (tW / 2)) - 20, (tY + (tH / 2)) + 50, 0, obj_icon_upgrade);

upgradePointsImg.image_xscale = 2
upgradePointsImg.image_yscale = 2;

for (var i = 0; i < 10; i++)
{
	var tile = instance_create_depth(tX + 50, tY + 50, 0, obj_upgrade_box);

	if (i == 0) {
		tile.name = "bullet";
		tile.sprite_index = spr_upgrade_bullet;
	} else if (i == 1) {
		tile.name = "health";
		tile.sprite_index = spr_upgrade_health;
	} else if (i == 2) {
		tile.name = "speed";
		tile.sprite_index = spr_upgrade_speed;
	} else if (i == 3) {
		tile.name = "shield";
		tile.sprite_index = spr_upgrade_shield;
	} else if (i == 4) {
		tile.name = "sniper";
		tile.sprite_index = spr_upgrade_sniper;
	} else if (i == 5) {
		tile.name = "sushi";
		tile.sprite_index = spr_upgrade_sushi;
	} else if (i == 6) {
		tile.name = "knife";
		tile.sprite_index = spr_upgrade_knife;
	} else if (i == 7) {
		tile.name = "fireball";
		tile.sprite_index = spr_upgrade_fireball;
	} else if (i == 8) {
		tile.name = "freeze";
		tile.sprite_index = spr_upgrade_freeze;
	} else if (i == 9) {
		tile.name = "nuke";
		tile.sprite_index = spr_upgrade_nuke;
	}
	
	tX += 245;
	if (i == 4)
	{
		tX = originalTX;
		tY += 145 + 245 + 145;
	}
}
