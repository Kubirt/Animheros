/// @description Invincibility
// You can write your code in this editor
if (IsPaused())
{
    obj_player.alarm[0] = dmgInvincibilityFrameTime;
    exit;
}

if (dmgInvincibilityFrame >= dmgInvincibilityFrames)
{
	dmgInvincibilityFrame = 0;
	isInvincible = false;
	image_alpha = 1;
	exit;
}

dmgInvincibilityFrame++;
image_alpha = dmgInvincibilityFrame % 2;
obj_player.alarm[0] = dmgInvincibilityFrameTime;
