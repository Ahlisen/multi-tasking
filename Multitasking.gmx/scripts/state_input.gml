///state_input()
script_execute(input_method,team,type);

if (special_input && type == PREY){
    if(o_level.grid[# xx, yy] != CORNER) {
        state = state_counter;
        counter = true;
        audio_play_sound(snd_blip, 5, false);
        animation = 0;
    } else {
        //audio_play_sound(snd_blip, 5, false);
        //state = stuck; TODO
    }
} else if(axis_hor != 0 || axis_ver != 0) {
    dir = round((point_direction(0,0,axis_hor,axis_ver))/90)*90;
    if (special_input && type == CHASER){
        image_blend = color_charge;
        audio_play_sound(snd_charge, 5, false);
        animation_multiplier = 2;
        //image_index = 2;  //Arrow-figure
        prepare_to_move(dir, 50, state_charging)
    } else {
        prepare_to_move(dir, 1, state_moving)
    }
}
