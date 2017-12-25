if(room == rm_menu) {
    teams += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
    teams = clamp(teams, 2, 4);
}

if(keyboard_check_released(vk_space)) {
    if(room != room_last) {
        room_goto_next();
    } else {
        room_restart();
    }
}

if(keyboard_check_released(vk_escape)) {
    game_restart();
}
