///state_rotate()
if(animation != 1) {
    image_angle = lerp(0, 90, smoothstep(animation));
    animation += animation_speed/2;
} else {
    if(battery == battery_max) {
        state = state_input;
        image_blend = color_charge;
        move_length = 2;
    } else {
        battery++;
        animation = 0;
    }
}
