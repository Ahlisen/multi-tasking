///get_input_keyboard_secondary(player, type)
var player = argument0;
var type = argument1;

if(type == CHASER) {
    special_input = keyboard_check_direct(ord('B'));
    axis_hor = keyboard_check(ord('L')) - keyboard_check(ord('J'));
    axis_ver = keyboard_check(ord('K')) - keyboard_check(ord('I'));
} else { //PREY
    special_input = keyboard_check_direct(vk_numpad0);
    axis_hor = keyboard_check(vk_numpad6) - keyboard_check(vk_numpad4);
    axis_ver = keyboard_check(vk_numpad5) - keyboard_check(vk_numpad8);
}
