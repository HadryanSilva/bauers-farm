//Definir inputs de movimentação
var _up = keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))
var _right = keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))
var _sprint = keyboard_check(vk_shift)
var _dir;

#region

if ((_up xor _down) or (_left xor _right)) {
	_dir = point_direction(0, 0, (_right - _left), (_down - _up));
	x_speed = lengthdir_x(move_speed, _dir);
	y_speed = lengthdir_y(move_speed, _dir);
} else {
	x_speed = 0;
	y_speed = 0;
}

if (place_meeting(x + x_speed, y, obj_colision)) {
	var _x_speed = sign(x_speed);
	
	while(!place_meeting(x + _x_speed, y, obj_colision)) {
		x+= _x_speed;
	}
	
	x_speed = 0;
}
 
x += round(x_speed);

if (place_meeting(x, y + y_speed, obj_colision)) {
	var _y_speed = sign(y_speed);
	
	while(!place_meeting(x, y + _y_speed, obj_colision)) {
		y+= _y_speed;
	}
	
	y_speed = 0;
		
	
}

y += round(y_speed);

#endregion

#region
if (_right) {
	if (_sprint) {
		move_speed = 1.5;
		sprite_index = spr_bauer_running_right;
	} else {
		move_speed = 1;
		sprite_index = spr_bauer_moving_right;
	}
} else if (_left) {
	if (_sprint) {
		move_speed = 1.5;
		sprite_index = spr_bauer_running_left;
	} else {
		move_speed = 1;
		sprite_index = spr_bauer_moving_left;
	}
} else if (_up) {
	if (_sprint) {
		move_speed = 1.5;
		sprite_index = spr_bauer_running_up;
	} else {
		move_speed = 1;
		sprite_index = spr_bauer_moving_up;
	}
} else if(_down) {
	if (_sprint) {
		move_speed = 1.5;
		sprite_index = spr_bauer_running_down;	
	} else {
		move_speed = 1;
		sprite_index = spr_bauer_moving_down;
	}
} else {
	sprite_index = spr_bauer_static_down;
}
#endregion
