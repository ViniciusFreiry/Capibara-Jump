if (!jump) {
	if (other.vspeed >= 0) {
		jump = true;
		other.earn_score();
		other.jump();
	}
} else {
	if (other.vspeed >= 0) other.jump();
}