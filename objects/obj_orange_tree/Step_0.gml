/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, id, true, false)) {
	
	clicked = !clicked
	if (clicked) {
		sprite_index = spr_orange_tree;
	} else {
		sprite_index = spr_fruit_tree;
	}
	
}