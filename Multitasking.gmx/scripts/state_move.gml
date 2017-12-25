///state_move()
if(animation != 1) {
    x = lerp(current_x, target_x, smoothstep(animation));
    y = lerp(current_y, target_y, smoothstep(animation));
    animation += animation_speed;
} else {
    state = previous_state;
}
