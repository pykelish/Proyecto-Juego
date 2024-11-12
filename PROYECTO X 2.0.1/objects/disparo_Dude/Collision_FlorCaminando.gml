/*if (other.state == "muerto") {
	exit; 
}*/


other.hp -= 1;
move_contact_all(direction, 16);
sprite_index = DudeMonster_Bubble_1;
instance_destroy();
