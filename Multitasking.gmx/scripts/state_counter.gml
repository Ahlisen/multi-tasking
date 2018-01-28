///state_counter()
if(animation < 1) {
    image_angle = lerp(rotation, rotation-360, smoothstep(animation));
    animation += animation_speed/2;
    if(animation > 0.25 && animation < 0.75) {
        image_blend = color_charge;
    } else {
        image_blend = color;
    }
} else {
    rotation = 0;
    image_angle = 0;
    state = state_input;
}
