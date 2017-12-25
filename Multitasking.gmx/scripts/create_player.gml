///create_player(xx, yy, type, team, color_offset)

var px = argument0;
var py = argument1;
var player = instance_create(px*CELL_WIDTH+CELL_WIDTH/2, py*CELL_HEIGHT+CELL_HEIGHT/2, o_mover);
player.xx = px;
player.yy = py;
player.type = argument2;
player.team = argument3;

if (player.type == PREY) {
    player.sprite_index = s_prey;
}
var color_offset = argument4;
player.color_charge = make_colour_hsv(73*player.team+color_offset,200,200);
player.color = make_colour_hsv(73*player.team+color_offset,156,145);
player.image_blend = player.color;
gamepad_set_axis_deadzone(player.team, .25);

return player;
