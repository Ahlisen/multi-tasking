///get_input_controller(player, type)
var player = argument0;
var type = argument1;
if(type == CHASER) {
    special_input = gamepad_button_check(player, gp_shoulderl);
    axis_hor = gamepad_axis_value(player, gp_axislh);
    axis_ver = gamepad_axis_value(player, gp_axislv);
} else { //PREY
    special_input = gamepad_button_check(player, gp_shoulderr);
    axis_hor = gamepad_axis_value(player, gp_axisrh);
    axis_ver = gamepad_axis_value(player, gp_axisrv);
}


