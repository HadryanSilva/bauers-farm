/// @description Insert description here
// You can write your code in this editor

switch (state) {
	case "idle":
		if (sprite_index == spr_brown_cow_idle_left or sprite_index == spr_brown_cow_idle_right) {
			break;
		}
		sprite_index = choose(spr_brown_cow_idle_left, spr_brown_cow_idle_right);
	break;
	case "moving":
		if (sprite_index == spr_brown_cow_walking_right or sprite_index == spr_brown_cow_walking_left) {
			break;
		}
		sprite_index = choose(spr_brown_cow_walking_right, spr_brown_cow_walking_left);
		if (sprite_index == spr_brown_cow_walking_left) {
			image_speed = -1;
		}
	break;
	case "eating":
		if (sprite_index == spr_brown_cow_chewing_left or sprite_index == spr_brown_cow_chewing_right) {
			break;
		}
		
		if (sprite_index == spr_brown_cow_eating_right and (image_index + image_speed) >= image_number) {
			sprite_index = spr_brown_cow_chewing_right;
			break;
		} 
		
		if (sprite_index == spr_brown_cow_eating_left and (image_index + image_speed) >= image_number) {
			sprite_index = spr_brown_cow_chewing_left;
			break;
		} 
		
		if (sprite_index != spr_brown_cow_eating_left and sprite_index != spr_brown_cow_eating_right) {
			sprite_index = choose(spr_brown_cow_eating_right, spr_brown_cow_eating_left);
		}
		
	break;
	case "sleeping":
		if (sprite_index == spr_brown_cow_sleeping_left or sprite_index == spr_brown_cow_sleeping_right) {
			break;
		}
		
		if (sprite_index == spr_brown_cow_laying_down_right and image_index+image_speed >= image_number) {
			sprite_index = spr_brown_cow_sleeping_right;
			break;
		} 
		
		if (sprite_index == spr_brown_cow_laying_down_left and image_index+image_speed >= image_number) {
			sprite_index = spr_brown_cow_sleeping_left;
			break;
		} 
		
		if (sprite_index != spr_brown_cow_laying_down_left and sprite_index != spr_brown_cow_laying_down_right) {	
			sprite_index = choose(spr_brown_cow_laying_down_right, spr_brown_cow_laying_down_left);
		}
}

show_debug_message(state);
