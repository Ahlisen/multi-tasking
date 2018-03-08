///get_input_ai_easy(player,type)
var player = argument0;
var type = argument1;
var length = 1;
var x_ = xx + lengthdir_x(length,dir);
var y_ = yy + lengthdir_y(length,dir);
var forward = o_level.grid[# x_, y_];

if forward == WALL {
    dir += choose(-90,90);
    x_ = xx + lengthdir_x(length,dir);
    y_ = yy + lengthdir_y(length,dir);
    var turn = o_level.grid[# x_, y_];
    if turn == WALL {
        dir -= 180;
    }
} else {
    if irandom(100) == 1 {
        dir = irandom(3)*90;
    }
}

axis_hor = lengthdir_x(1,dir);
axis_ver = lengthdir_y(1,dir);
special_input = 0;
