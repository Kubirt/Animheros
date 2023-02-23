/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (other.sniper <= 0)
	instance_destroy(other);
else
	other.sniper -= 1;

//direction = random(360);

fire = other.fire;
freeze = other.freeze;

life -= 2;

if (fire > 0)
	alarm[1] = 1
