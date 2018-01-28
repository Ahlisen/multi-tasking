///state_moving()
if(animation < 1) {
    x = lerp(current_x, target_x, smoothstep(animation));
    y = lerp(current_y, target_y, smoothstep(animation));
    animation += animation_increment;
} else {
    x = target_x;
    y = target_y;
    xx = (target_x-CELL_WIDTH div 2) div CELL_WIDTH;
    yy = (target_y-CELL_HEIGHT div 2) div CELL_HEIGHT;
    state = previous_state;
    image_blend = color;
}
