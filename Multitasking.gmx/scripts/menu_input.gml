if(room == rm_menu) {
    controllers = 0;
    var gp_num = gamepad_get_device_count();
    for (var i = 0; i < gp_num; i++;){
        if gamepad_is_connected(i) controllers++;
    }
    
    if(keyboard_check_pressed(vk_anykey)) {
        audio_play_sound(snd_thump,2,false);
    }
    
    if(keyboard_check_pressed(vk_add)) {
        secondary_keyboard = !secondary_keyboard;
    }
    
    current_index += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
    current_index = clamp(current_index,0,2);
    current_selection[current_index] += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
    current_selection[current_index] = clamp(current_selection[current_index], 1, array_length_2d(menu,current_index)-1)
    
    //teams += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
    //teams = clamp(teams, 2, 6/*(1+secondary_keyboard+controllers)*/);
    availible_players = 1+secondary_keyboard+controllers;
    color_offset = floor(255/(teams*2));
}

if(keyboard_check_released(vk_space)) {
    if(room == rm_menu) {
        var index = current_selection[TEAMS];
        teams = menu[TEAMS,index];
        corners = current_selection[CORNERS]; //1,2,3 = no,50%,yes
        room_goto_next();
    } else {
        if(o_level.game_over) {
            if(o_level.winner != -1) {
                with(o_level) {
                    instance_destroy();
                }
                room_goto(room_first);
            } else {
                room_restart();
            }
        }
    }
}

if(keyboard_check_released(vk_escape)) {
    if(room == rm_main) {
        with(o_level) {
            instance_destroy();
        }
        room_goto(room_first);
    } else {
        game_end();
    }
}
