///prepare_to_move(dir, steps, state)
dir = argument0;
image_angle = dir;

var steps_ = argument1;
var state_ = argument2;
var length = 1;

while(true) {
    var check_x = xx + lengthdir_x(length, dir);
    var check_y = yy + lengthdir_y(length, dir);
    if(grid_place_free(check_x,check_y) && length <= steps_) {
        length++;
    } else {
        break;
    }
}

length--;
check_x = xx + lengthdir_x(length, dir);
check_y = yy + lengthdir_y(length, dir);
animation = 0;

if(length > 0) {
    current_x = x;
    current_y = y;
    target_x = check_x*CELL_WIDTH+CELL_WIDTH/2;
    target_y = check_y*CELL_HEIGHT+CELL_HEIGHT/2;
    animation_increment = animation_speed*animation_multiplier/length;
    state = state_;
} else {
    animation_multiplier = 1;
    bounce_x = 2*lengthdir_x(1, dir);
    bounce_y = 2*lengthdir_y(1, dir);
    bounce_size_x = power(0.9, 1);
    bounce_size_y = power(1.05, 1);
    state = state_collision;
    audio_play_sound(collision_sound,0,false);
    
    image_index = 0;
    image_blend = color;
}
