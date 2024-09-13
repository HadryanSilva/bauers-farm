//Definir inputs de movimentação
var _up = keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))
var _right = keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))

//Definindo a velocidade de X e Y
x_speed = (_right - _left) * move_speed;
y_speed = (_down - _up) * move_speed;

//Movimenta o player
x += x_speed;
y += y_speed;

//Troca sprites
if (x_speed > 0) {
	sprite_index = spr_bauer_moving_right;
} else if (x_speed < 0) {
	sprite_index = spr_bauer_moving_left;
} else if (y_speed < 0) {
	sprite_index = spr_bauer_moving_up;
} else if(y_speed > 0) {
	sprite_index = spr_bauer_moving_down;
} else {
	sprite_index = spr_bauer_static_down;
}
