///state_charging()

dir = image_angle;
var lenx = lengthdir_x(1, dir);
var leny = lengthdir_y(1, dir);
check_x = xx + lenx;
check_y = yy + leny;
if(grid_place_free(check_x,check_y)) {
    current_x = x;
    current_y = y;
    target_x = check_x*CELL_WIDTH+CELL_WIDTH/2;
    target_y = check_y*CELL_HEIGHT+CELL_HEIGHT/2;
    xx = check_x;
    yy = check_y;
    state = state_move;
} else {
    bounce_x = 2*lenx;
    bounce_y = 2*leny;
    bounce_size_x = 0.9;
    bounce_size_y = 1.05;
    state = state_collision;
    audio_play_sound(snd_bounce,0,false);
    image_blend = color;
}
animation = 0;
image_angle = dir;

