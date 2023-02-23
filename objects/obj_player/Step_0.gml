/// @description Move player
// You can write your code in this editor
if (IsPaused()) exit;

if keyboard_check(ord(obj_settings.key_up)) y -= obj_player.moveSpeed;

if keyboard_check(ord(obj_settings.key_down)) y += obj_player.moveSpeed;

if keyboard_check(ord(obj_settings.key_left)) x -= obj_player.moveSpeed;

if keyboard_check(ord(obj_settings.key_right)) x += obj_player.moveSpeed;

x=clamp(x, 0+sprite_width/2, room_width-sprite_width/2 - 30);
y=clamp(y, 0+sprite_height/2, room_height-sprite_height/2);

if (mouse_x > x)
	image_xscale = 1;
else
	image_xscale = -1;
