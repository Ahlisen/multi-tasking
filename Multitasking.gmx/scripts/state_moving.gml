///state_moving()
script_execute(input_method,team,type);
if (special_input) {
    image_blend = c_black;
} else {
    image_blend = color;
}

if(animation < 1) {
    x = lerp(current_x, target_x, smoothstep(animation));
    y = lerp(current_y, target_y, smoothstep(animation));
    animation += animation_increment;
} else {
    x = target_x;
    y = target_y;
    xx = (target_x-CELL_WIDTH div 2) div CELL_WIDTH;
    yy = (target_y-CELL_HEIGHT div 2) div CELL_HEIGHT;
    state = std_state;
    image_blend = color;
}
