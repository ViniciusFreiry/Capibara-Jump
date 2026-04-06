if (!instance_exists(owner)) instance_destroy(id, false);
else {
	x = owner.x + owner.width / 2;
	y = owner.y - 2;
}