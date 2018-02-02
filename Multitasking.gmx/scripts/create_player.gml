///create_player(xx, yy, type, team, input, hue)

var px = argument0;
var py = argument1;
var player = instance_create(px*CELL_WIDTH+CELL_WIDTH/2, py*CELL_HEIGHT+CELL_HEIGHT/2, o_mover);
player.xx = px;
player.yy = py;
player.type = argument2;
player.team = argument3;
player.input_method = argument4;
var hue = argument5;

player.color_charge = make_colour_hsv(hue,200,210);
player.color = make_colour_hsv(hue,140,172);
player.color_sleep = make_colour_hsv(hue,60,150);

if (player.type == PREY) {
    player.sprite_index = s_prey;
    player.image_blend = player.color;
} else {
    player.image_blend = player.color_sleep;
    player.state = state_rotate;
    player.battery_max = 3;
    player.animation_speed /= 2;
}


return player;
