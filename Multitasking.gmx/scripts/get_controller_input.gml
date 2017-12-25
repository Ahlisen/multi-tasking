///get_controller_input(player, type)
var player = argument0;
var type = argument1;
if(type == CHASER) {
    charge_input = gamepad_button_check(player, gp_shoulderl);
    axis_hor = gamepad_axis_value(player, gp_axislh);
    axis_ver = gamepad_axis_value(player, gp_axislv);
} else {
    axis_hor = gamepad_axis_value(player, gp_axisrh);
    axis_ver = gamepad_axis_value(player, gp_axisrv);
}


