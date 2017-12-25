///state_input
get_controller_input(team, type);
//image_blend = color;

if(axis_hor != 0 || axis_ver != 0) {
    dir = round((point_direction(0,0,axis_hor,axis_ver))/90)*90;
    var lenx = lengthdir_x(1, dir);
    var leny = lengthdir_y(1, dir);
    check_x = xx + lenx;
    check_y = yy + leny;
    if(check_x < room_width/CELL_WIDTH && check_x > 0 &&
       check_y < room_height/CELL_HEIGHT && check_y > 0 && 
       !grid_place_meeting(check_x,check_y)) {
        current_x = x;
        current_y = y;
        target_x = check_x*CELL_WIDTH+CELL_WIDTH/2;
        target_y = check_y*CELL_HEIGHT+CELL_HEIGHT/2;
        xx = check_x;
        yy = check_y;
        if(charge_input) {
            previous_state = state_charging;
            animation_speed *= 2;
            image_blend = color_charge;
            audio_play_sound(snd_charge, 5, false);
        }
        state = state_move;
    } else {
        bounce_x = 2*lenx;
        bounce_y = 2*leny;
        bounce_size_x = 0.9;
        bounce_size_y = 1.05;
        state = state_collision;
        audio_play_sound(snd_bounce,0,false);

    }
    animation = 0;
    image_angle = dir;
}

