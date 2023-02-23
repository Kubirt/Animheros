/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 0.5, c_red);

//direction = random(360);
obj_boss.hp -= 1;

if (obj_boss.hp == 0) {
	instance_destroy();
}
