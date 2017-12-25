///state_rotate()
if(animation != 1) {
    image_angle = lerp(rotation, rotation-90, smoothstep(animation));
    animation += animation_speed/2;
} else {
    if(battery == battery_max) {
        state = state_input;
        if(type = PREY) {
            image_blend = color_charge;
            move_length = 2;
            audio_play_sound(snd_shink, 1, false);
        } else {
            image_blend = color;
            animation_speed = animation_speed_std;
            audio_play_sound(snd_blip_high, 10, false);
            battery = 0;
        }
    } else {
        battery++;
        animation = 0;
        rotation -= 90;
        audio_play_sound(snd_blip, 1, false);
    }
    
}
