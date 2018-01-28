///state_move()
if(animation < 1) {
    x = lerp(current_x, target_x, animation);
    y = lerp(current_y, target_y, animation);
    animation += animation_increment;
} else {
    state = previous_state;
}
