/// @description Insert description here
// You can write your code in this editor
var tH = camera_get_view_height(view_camera[0]);
var tW = camera_get_view_width(view_camera[0]);
var tY = camera_get_view_y(view_camera[0]);
var tX = camera_get_view_x(view_camera[0]);
var width = (tX + (tW / 2));
var height = (tY + (tX / 2))

//draw_text(width / 2 - 20, 20, "Level " + string(obj_game.level));
draw_rectangle_color(tX + 10, tY + 10, tX + tW - 10, tY + 30, c_aqua, c_lime, c_aqua, c_lime, true)
expPercent = obj_game.exp / obj_game.expNeeded;
draw_rectangle_color(tX + 10, tY + 10 , tX + 10 + ((tW - 20) * expPercent), tY + 30, c_aqua, c_lime, c_aqua, c_lime, false)
draw_text_transformed_color(width - 10, tY + 12, "Level " + string(obj_game.level), 0.3, 0.3, 0, c_red, c_yellow, c_red, c_yellow, 1)
var lastHeartPosX = 0
if (instance_exists(obj_player))
{
	repeat(obj_player.playerHealth)
	{
		draw_sprite(spr_heart, -1, tX + 10 + lastHeartPosX * 20, tY + 50);
		lastHeartPosX += 1;
	}
	repeat(obj_player.shield)
	{
		draw_sprite(spr_full_shield, -1, tX + 10 + lastHeartPosX * 20, tY + 50);
		lastHeartPosX += 1;
	}
	repeat(obj_player.maxShield - obj_player.shield)
	{
		draw_sprite(spr_empty_shield, -1, tX + 10 + lastHeartPosX * 20, tY + 50);
		lastHeartPosX += 1;
	}
}
