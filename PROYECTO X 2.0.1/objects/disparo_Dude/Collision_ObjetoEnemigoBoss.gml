if (other.state == "muerto") {
	exit; 
}

other.hp -= damage;

move_contact_all(direction, 16);
instance_destroy();