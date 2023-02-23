/// @description Insert description here
// You can write your code in this editor

if (!IsPaused()) {
	mseconds += (delta_time*0.000001)*room_speed;
	if mseconds >= 60 {
		mseconds -= 60;
		sec += 1;
	}
	if sec >= 60 {
		sec -=60;
		minutes+= 1;
	}
}