///state_input
get_controller_input(team, type);
//image_blend = color;

if(axis_hor != 0 || axis_ver != 0) {
    dir = round((point_direction(0,0,axis_hor,axis_ver))/90)*90;
    var temp_length = move_length;
    var empty = false;
    while(temp_length != 0) {
        check_x = xx + lengthdir_x(temp_length, dir);
        check_y = yy + lengthdir_y(temp_length, dir);
        if(grid_place_free(check_x,check_y)) {
            empty = true;
            break;
        }
        temp_length--;
    }
    if(empty) {
        current_x = x;
        current_y = y;
        target_x = check_x*CELL_WIDTH+CELL_WIDTH/2;
        target_y = check_y*CELL_HEIGHT+CELL_HEIGHT/2;
        xx = check_x;
        yy = check_y;
        if(battery != 0 && type == PREY) {
            battery--;
        }
        if (special_input && type == CHASER){
            previous_state = state_charging;
            animation_speed *= 2;
            image_blend = color_charge;
            audio_play_sound(snd_charge, 5, false);
            state = state_move;
            special_activate = false;
        }
        state = state_move;
    } else {
        bounce_x = 2*lengthdir_x(move_length, dir);
        bounce_y = 2*lengthdir_y(move_length, dir);
        bounce_size_x = power(0.9, move_length);
        bounce_size_y = power(1.05, move_length);
        state = state_collision;
        audio_play_sound(snd_bounce,0,false);
    }
    image_angle = dir;
} else {
    if(special_input && type == PREY && battery == 0) {
        state = state_rotate;
        audio_play_sound(snd_charge, 5, false);
        battery++; //Quick fix for 3 rotations
    }
}
animation = 0;

