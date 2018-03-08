///get_input_keyboard(player, type)
var player = argument0;
var type = argument1;

if(type == CHASER) {
    special_input = keyboard_check_direct(vk_lcontrol);
    axis_hor = keyboard_check(ord('D')) - keyboard_check(ord('A'));
    axis_ver = keyboard_check(ord('S')) - keyboard_check(ord('W'));
} else { //PREY
    special_input = keyboard_check_direct(vk_rcontrol);
    axis_hor = keyboard_check(vk_right) - keyboard_check(vk_left);
    axis_ver = keyboard_check(vk_down) - keyboard_check(vk_up);
}
