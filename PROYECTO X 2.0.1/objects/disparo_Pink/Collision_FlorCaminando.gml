/*if (other.state == "muerto") {
	exit; 
}*/


//other.hp -= damage;
move_contact_all(direction, 16);
sprite_index = PinkMonster_Bubble_1;
instance_destroy();
other.hp -= 1;
